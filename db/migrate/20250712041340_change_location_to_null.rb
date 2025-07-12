class ChangeLocationToNull < ActiveRecord::Migration[7.1]
  def change
    change_column :posts, :location, :text, null: true
  end
end
