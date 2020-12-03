class Post < ApplicationRecord
  mount_uploader :image, ImageUploader
  validates :content, presence: true, length: {maximum: 140}
  validates :image, presence: true
  belongs_to :user
end
