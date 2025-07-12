class ChangeAreaToIntegerAndLocationToText < ActiveRecord::Migration[7.1]
  def change
    change_column :posts, :location, :text, null: true
    add_column :posts, :area, :integer, null: false
  end
end
