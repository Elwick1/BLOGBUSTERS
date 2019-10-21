class Article < ApplicationRecord
  belongs_to :user
  validates :title, presence: true
  validates :content, length: { minimum: 50 }
end