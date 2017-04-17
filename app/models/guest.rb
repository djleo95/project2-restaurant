class Guest < Human
  has_many :orders, dependent: :destroy
end
