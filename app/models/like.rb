class Like < ApplicationRecord
  belongs_to :user
  belongs_to :article
  validates :user_id, uniqueness: { scope: [:article_id] }
  validates :article_id, uniqueness: { scope: [:user_id] }
end
