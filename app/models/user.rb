class User < ApplicationRecord
  has_many :articles

  has_many :likes, through: :articles

  validates :username, uniqueness: true
  validates :username, presence: true
  validates :username, length: { maximum: 15 }
  validates :age, numericality: { greater_than: 16 }
  validates :bio, length: { maximum: 150 } 
  validates :bio, presence: true 
  validates :password, length: {minimum: 6 }
  validates :password, presence: true

  def most_liked_article
    current_highest_article = nil
    current_likes = 0
    self.articles.each do |article|
      if article.likes.count > current_likes
        current_highest_article = article
        current_likes = article.likes
      end
    end
    current_highest_article
  end
  # def featured_article
  #   self.articles.max_by {|article| article.likes}
  # end
end
