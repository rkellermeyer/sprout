class Trip < ActiveRecord::Base
  attr_accessible :description, :title
  belongs_to :category
  belongs_to :user

  has_many :photos
end
