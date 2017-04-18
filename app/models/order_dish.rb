class OrderDish < ApplicationRecord
  belongs_to :order
  belongs_to :dish

  validates :quantity, presence: true,
    numericality: {only_integer: true, greater_than: 0}
  validate :dish_present
  validate :order_present

  before_save :finalize

  def total_price
    price * quantity
  end

  private
  def dish_present
    unless dish
      errors.add :dish, I18n.t("order.not_valid_or_not_active")
    end
  end

  def order_present
    unless order
      errors.add :order, I18n.t("order.not_valid_value")
    end
  end

  def finalize
    self[:price] = dish.price
    self[:total_price] = quantity * self[:price]
  end
end
