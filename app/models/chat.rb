class Chat < ActiveRecord::Base
  attr_accessible :description, :title, :topic, :user_id, :category_id, :messages_attributes
  has_many :messages
  has_and_belongs_to_many :users
end
