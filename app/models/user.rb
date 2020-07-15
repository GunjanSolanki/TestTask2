class User < ApplicationRecord
  enum role: [:user, :admin]
  
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
  :recoverable, :rememberable, :validatable
  
  validates :name, presence: true, length: { maximum: 10 } 
  validates :email, uniqueness: true
  validates :password, presence: true, confirmation: true
  validates :contact, presence: true, length: { maximum: 10 }

  has_many :products
end
