class OrderCombo < ApplicationRecord
  belongs_to :order
  belongs_to :combo

  validates :quantity, presence: true,
    numericality: {only_integer: true, greater_than: 0}
  validate :combo_present
  validate :order_present

  before_save :finalize

  def total_price
    price * quantity
  end

  private
  def combo_present
    unless combo
      errors.add :combo, t("order.not_valid_or_not_active")
    end
  end

  def order_present
    unless order
      errors.add :order, t("order.not_valid_value")
    end
  end

  def finalize
    self[:price] = combo.price
    self[:total_price] = quantity * self[:price]
  end
end
