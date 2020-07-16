class ProductOption < ApplicationRecord
  belongs_to :product_type

  validates :supported_option_type, uniqueness: true
end