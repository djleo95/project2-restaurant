class Guest < Human
  has_many :orders, inverse_of: :guest
end
