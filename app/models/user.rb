class User < ApplicationRecord
  has_many :articles
  validates :username, uniqueness: true
  validates :username, presence: true
  validates :username, length: { maximum: 15 }
  validates :age, numericality: { greater_than: 16 }
  validates :bio, length: { maximum: 150} 
  validates :password, length: {minimum: 6 }
  validates :password, presence: true
end
