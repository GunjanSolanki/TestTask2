class Option < ApplicationRecord
  has_many :variant_options, dependent: :destroy
  has_many :variants, through: :variant_options

  validates :option_type, uniqueness: true
end
