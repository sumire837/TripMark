class Post < ApplicationRecord
  validates :title, presence: true, length: { maximum: 255 }
  validates :category, presence: true, length: { maximum: 20 }
  validates :area, presence: true, length: { maximum: 20 }
  validates :location, presence: true, length: { maximum: 255 }
  validates :url, presence: true, length: { maximum: 255 }
  validates :content, presence: true, length: { maximum: 65_535 }
  mount_uploader :post_image, PostImageUploader

  belongs_to :user
end
