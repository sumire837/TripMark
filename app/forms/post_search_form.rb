class PostSearchForm
  include ActiveModel::Model
  include ActiveModel::Attributes

  attribute :gender, :string
  attribute :age, :string
  attribute :category, :string
  attribute :area, :string
  attribute :title, :string

  def search
    posts = Post.joins(:user).includes(:user).order(id: :desc)

    posts = posts.where(users: { gender: User.genders[gender] }) if gender.present?
    posts = posts.where(users: { age: User.ages[age] }) if age.present?
    posts = posts.where(posts: { category: Post.categories[category] }) if category.present?
    posts = posts.where(posts: { area: Post.areas[area] }) if area.present?
    posts = posts.where("posts.title LIKE ?", "%#{title}%") if title.present?

    posts
  end
end
