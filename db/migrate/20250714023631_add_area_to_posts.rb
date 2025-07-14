class AddAreaToPosts < ActiveRecord::Migration[7.1]
  def change
    unless column_exists?(:posts, :area)
      add_column :posts, :area, :integer, null: false, default: 0
    end
  end
end
