class User < ApplicationRecord
  authenticates_with_sorcery!

  validates :password, length: { minimum: 3 }, if: -> { new_record? || changes[:crypted_password] }
  validates :password, confirmation: true, if: -> { new_record? || changes[:crypted_password] }
  validates :password_confirmation, presence: true, if: -> { new_record? || changes[:crypted_password] }
  validates :name, presence: true, length: { maximum: 255 }
  validates :email, presence: true, uniqueness: true
  validates :reset_password_token, uniqueness: true, allow_nil: true
  has_many :posts, dependent: :destroy
  mount_uploader :profile_image, ProfileImageUploader
  enum gender: { unspecified: 0, male: 1, female: 2 }
  enum age: {ten: 0, twenty: 1, thirty:2, forty: 3, fifty: 4, sixty: 5, seventy: 6}

  def own?(object)
    id == object&.user_id
  end

end
