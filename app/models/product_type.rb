class ProductType < ApplicationRecord
  has_many :products, dependent: :destroy
  has_many :product_options, dependent: :destroy

  validates :name, uniqueness: true
end
