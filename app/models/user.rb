class User < ApplicationRecord
  has_many :articles
  has_many :likes 
  # has_many :liked, :through likes
  validates :username, uniqueness: true
  validates :username, presence: true
  validates :username, length: { maximum: 15 }
  validates :age, numericality: { greater_than: 16 }
  validates :bio, length: { maximum: 150} 
  validates :bio, presence: true 
  validates :password, length: {minimum: 6 }
  validates :password, presence: true
end
