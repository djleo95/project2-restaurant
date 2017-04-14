class Combo < ApplicationRecord
  has_many :combo_dishes
  has_many :order_combos

  def subtotal
    combo_dishes.map{|combo_dish| (combo_dish.dish.price)}.sum
  end

  def price
    subtotal * discount / 100
  end
end
