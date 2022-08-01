class CreateReplies < ActiveRecord::Migration[7.0]
  def change
    create_table :replies do |t|
      t.string :content
      t.integer :user_id
      t.integer :post_id
      t.integer :likes
      t.string :replyname

      t.timestamps
    end
  end
end
