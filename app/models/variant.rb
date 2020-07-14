class Variant < ApplicationRecord
  belongs_to :product

  has_many :variant_options, dependent: :destroy
  has_many :options, through: :variant_options
end
