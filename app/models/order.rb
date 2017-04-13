class Order < ApplicationRecord
  belongs_to :guest
  belongs_to :table

  has_many :order_dishes
  has_many :order_combos

  def subtotal
    total_dishs_price = order_dishes.map{|order_dish| order_dish.valid? ?
      (order_dish.quantity * order_dish.price) : 0}.sum
    total_combos_price = order_combos.map{|order_combo| order_combo.valid? ?
      (order_combo.quantity * order_combo.price) : 0}.sum
    total_dishs_price + total_combos_price
  end
end
