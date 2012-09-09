class Chat < ActiveRecord::Base
  attr_accessible :description, :title, :topic, :user_id
  belongs_to :category

  has_and_belongs_to_many :users
end
