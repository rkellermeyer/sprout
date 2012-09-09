class Category < ActiveRecord::Base
  attr_accessible :description, :name
  has_many :blogs
  has_many :messages, through: :chats
  has_many :photos, through: :trips
  has_many :posts, through: :blogs
  has_many :tags, through: :photos
  has_many :trips

  has_and_belongs_to_many :users
end
