class Variant < ApplicationRecord
  belongs_to :product

  has_many :variant_options, dependent: :destroy
  has_many :options, through: :variant_options
  accepts_nested_attributes_for :options

  validates :sku, uniqueness: true
end
