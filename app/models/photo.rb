class Photo < ActiveRecord::Base
  attr_accessible :description, :rating, :title
end
