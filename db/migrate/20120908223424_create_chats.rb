class CreateChats < ActiveRecord::Migration
  def change
    create_table :chats do |t|
      t.string :title
      t.text :description
      t.string :topic
      t.integer :user_id

      t.timestamps
    end
  end
end
