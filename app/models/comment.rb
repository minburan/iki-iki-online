class Comment < ApplicationRecord

  has_one_attached :image
  belongs_to :user
  has_many :responses, dependent: :destroy
  has_many :favorites, dependent: :destroy

  validates :title, presence: true
  validates :body, presence: true

  def favorited_by?(user)
    favorites.exists?(user_id: user.id)
  end
  
end
