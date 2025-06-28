class CreatePosts < ActiveRecord::Migration[7.1]
  def change
    create_table :posts do |t|
      t.string :title, null: false
      t.string :location, null: false
      t.string :access
      t.string :url
      t.text :content, null: false
      t.string :post_image
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
