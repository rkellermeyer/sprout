class Message < ActiveRecord::Base
  attr_accessible :chat_id, :content, :receiver_id, :sender_id, :user_id
  belongs_to :chat
  belongs_to :user
end
