class Dish < ApplicationRecord
  has_many :category_dishes
  has_many :categories, through: :category_dishes, dependent: :destroy
  has_many :combo_dishes
  has_many :combos, through: :combo_dishes, dependent: :destroy
  has_many :order_dishes

  validates :name, presence: true
  validates :price, presence: true, numericality: {greater_than: 0}
  scope :dishes, -> {where isAvailable: true}
end
