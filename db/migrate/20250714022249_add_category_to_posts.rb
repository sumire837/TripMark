class AddCategoryToPosts < ActiveRecord::Migration[7.1]
  def change
    unless column_exists?(:posts, :category)
      add_column :posts, :category, :integer, null: false, default: 0
    end
  end
end
