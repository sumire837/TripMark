class ChangeLocationToIntegerAndAddCategoryToPosts < ActiveRecord::Migration[7.1]
  def change
    change_column :posts, :location, :integer, null: false
    add_column :posts, :category, :integer, null: false
  end
end
