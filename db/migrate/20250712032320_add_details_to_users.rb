class AddDetailsToUsers < ActiveRecord::Migration[7.1]
  def change
    add_column :users, :name, :string
    add_column :users, :gender, :integer
    add_column :users, :age, :integer
    add_column :users, :comment, :text
    add_column :users, :profile_image, :string
  end
end
