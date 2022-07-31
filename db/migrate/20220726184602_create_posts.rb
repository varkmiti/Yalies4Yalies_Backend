class CreatePosts < ActiveRecord::Migration[7.0]
  def change
    create_table :posts do |t|
      t.string :title
      t.text :content
      t.integer :likes
      t.integer :student_id
      t.string :tag1
      t.string :tag2
      t.string :tag3
      t.string :postname

      t.timestamps
    end
  end
end
