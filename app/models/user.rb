class User < ActiveRecord::Base
  attr_accessible :name, :email, :github_id
  has_many :ratings

end
