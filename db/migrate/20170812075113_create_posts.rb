class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|

      t.timestamps null: false
      t.integer :category_id 
      # t.integer :user_id
      t.text :content
      t.string :title
      t.string :email
    end
  end
end
