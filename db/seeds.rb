# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).

   Shop.delete_all
   open("db/ruby_shops.txt") do |shops|
     shops.read.each_line do |shop|
      name, site = shop.chomp.split("|")
      Shop.create!(:name => name, :site => site)
    end
   end
