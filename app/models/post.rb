class Post < ApplicationRecord
  validates :title, presence: true, length: { maximum: 255 }
  validates :category, presence: true
  validates :area, presence: true
  validates :location, presence: true, length: { maximum: 255 }
  validates :url, presence: true, length: { maximum: 255 }
  validates :content, presence: true, length: { maximum: 65_535 }
  mount_uploader :post_image, PostImageUploader

  enum category: {Shopping: 0, Fashion: 1, Food: 2, Drink: 3, Sightseeing: 4, Amusement: 5, Art: 6, Hotspring: 7, Hotel: 8, BeautifulView: 9, category_other: 10 }
  enum area: {Hokkaido: 0, Tohoku: 1, Kanto: 2, Syutoken: 3, Hokuriku: 4, Tyubu: 5, Kinki: 6, Sikoku: 7, Tyugokutihou: 8, Kyusyu: 9, Asea: 10, Europe: 11, Africa: 12, NorthAmerica: 13, SouthAmerica: 14, area_other:15 }
  belongs_to :user
end
