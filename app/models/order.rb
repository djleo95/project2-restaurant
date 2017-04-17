class Order < ApplicationRecord
  belongs_to :guest
  belongs_to :table, inverse_of: :orders

  has_many :order_dishes
  has_many :order_combos

  accepts_nested_attributes_for :guest
  accepts_nested_attributes_for :table

  def subtotal
    total_dishes_price = order_dishes.map{|order_dish| order_dish.valid? ?
      (order_dish.quantity * order_dish.price) : 0}.sum
    total_combos_price = order_combos.map{|order_combo| order_combo.valid? ?
      (order_combo.quantity * order_combo.price) : 0}.sum
    total_dishes_price + total_combos_price
  end
end
