class Message < ActiveRecord::Base
  attr_accessible :chat_id, :content, :receiver_id, :sender_id
end
