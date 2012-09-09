class CreateChatUsersJoinTable < ActiveRecord::Migration
  def up
    create_table :chats_users do |t|
      t.integer :chat_id
      t.integer :user_id
    end
  end

  def down
    drop_table :chats_users
  end
end
