class CreatePosts < ActiveRecord::Migration[7.0]
  def change
    create_table :posts do |t|
      t.string :title
      t.string :content
      t.integer :likes
      t.integer :user_id
      t.string :tag1
      t.string :tag2
      t.string :tag3
      t.string :postname
      t.boolean :view_replies
      t.integer :score
      

      t.timestamps
    end
  end
end
