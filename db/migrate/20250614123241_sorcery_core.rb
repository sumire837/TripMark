class SorceryCore < ActiveRecord::Migration[7.1]
  def change
    create_table :users do |t|
      t.string :email,            null: false, index: { unique: true }
      t.string :crypted_password
      t.string :salt
      t.string :name
      t.integer :gender
      t.integer :age
      t.text :comment
      t.string :profile_image

      t.timestamps                null: false
    end
  end
end
