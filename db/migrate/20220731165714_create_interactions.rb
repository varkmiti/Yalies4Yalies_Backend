class CreateInteractions < ActiveRecord::Migration[7.0]
  def change
    create_table :interactions do |t|
      t.string :type
      t.string :user_id
      t.string :post_id
      t.string :tag

      t.timestamps
    end
  end
end
