class Tag < ActiveRecord::Base
  attr_accessible :message, :user_id
  belongs_to :photo
  belongs_to :user
end
