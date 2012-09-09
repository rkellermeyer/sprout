class Photo < ActiveRecord::Base
  attr_accessible :description, :rating, :title
  belongs_to :category
  belongs_to :trip

  has_many :tags
end
