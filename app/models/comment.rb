class Comment < ApplicationRecord

  has_one_attached :image
  belongs_to :user
  has_many :responses, dependent: :destroy

end
