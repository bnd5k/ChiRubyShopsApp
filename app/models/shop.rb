class Shop < ActiveRecord::Base
  attr_accessible :name, :site
  has_many :ratings

  def user_ratings(user)
    #should provide the rating that the user has given to a shop
    #show rating where rating.shop = shop.name
    #ok, now how does rating.shop get created?  Model will need these cols:
    #rating no (1..5), notes txt box, and shop name
  
  end

end
