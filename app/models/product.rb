class Product < ApplicationRecord
  belongs_to :product_type
  belongs_to :user
  has_many :variants, dependent: :destroy
  accepts_nested_attributes_for :variants

  scope :most_recent, -> { order(created_at: :desc) }
  
  validates :sku, uniqueness: true
end
