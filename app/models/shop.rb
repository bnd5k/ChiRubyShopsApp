class Shop < ActiveRecord::Base
  attr_accessible :name, :site
  has_many :ratings
  has_many :users
end
