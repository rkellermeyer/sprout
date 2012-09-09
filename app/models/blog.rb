class Blog < ActiveRecord::Base
  attr_accessible :description, :title, :user_id
  belongs_to :category
  belongs_to :user
  has_many :posts
  
  #accepts_nested_attributes_for :posts, dependent: :destroy
  
end
