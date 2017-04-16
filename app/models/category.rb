class Category < ApplicationRecord
  has_many :category_dishes
  has_many :dishes, through: :category_dishes, dependent: :destroy

  validates :name, presence: true
end
