class Rating < ActiveRecord::Base
  attr_accessible :rating, :comment
  belongs_to :shop
  belongs_to :user

end
