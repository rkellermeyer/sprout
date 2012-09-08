class Chat < ActiveRecord::Base
  attr_accessible :description, :title, :topic, :user_id
end
