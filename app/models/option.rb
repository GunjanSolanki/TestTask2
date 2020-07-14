class Option < ApplicationRecord
  has_many :variant_options, dependent: :destroy
  has_many :variants, through: :variant_options

  has_many :products, dependent: :destroy
end
