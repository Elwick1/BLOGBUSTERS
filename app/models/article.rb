class Article < ApplicationRecord
  belongs_to :user
  has_many :users, through: :likes

  has_many :likes

  validates :title, presence: true
  validates :content, length: { minimum: 50 }
  validates :content, presence: true 
end
