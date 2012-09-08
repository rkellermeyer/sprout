class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :title
      t.text :description
      t.integer :image_id
      t.integer :user_id

      t.timestamps
    end
  end
end
