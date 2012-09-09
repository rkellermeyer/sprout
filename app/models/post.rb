class Post < ActiveRecord::Base
  attr_accessible :description, :image_id, :title, :user_id
  
  belongs_to :blog
  belongs_to :user
  
end
