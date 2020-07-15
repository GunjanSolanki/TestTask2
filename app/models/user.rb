class User < ApplicationRecord
  enum role: [:user, :admin]

  validates :name, presence: true, length: { maximum: 10 } 
  validates :email, uniqueness: true
  validates :password, presence: true, confirmation: true
  validates :contact, presence: true, length: { maximum: 10 }

  has_many :products
end
