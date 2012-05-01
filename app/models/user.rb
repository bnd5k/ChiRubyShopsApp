class User < ActiveRecord::Base
  attr_accessible :name, :email, :password, :password_confirmation
  has_many :ratings
  has_many :shops

end
