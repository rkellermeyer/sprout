class Blog < ActiveRecord::Base
  attr_accessible :description, :title, :user_id
end
