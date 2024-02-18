class Product < ApplicationRecord
  validates :product_name, presence: true
  validates :product_desc, presence: true
  validates :amount, presence: true
  validates :qty, presence: true, numericality: { only_integer: true, greater_than_or_equal_to: 0 }

  has_one_attached :image
end
