ChiRubyShopsApp::Application.routes.draw do
  
 # resources :shops, :users, :ratings
 # root :to => 'shops#index'
 # match ':controller(/:action(/:id))(.:format)'

 get '/shops', :controller => 'shops', :action => 'index', :as =>  :shops
 get '/shops/:id', :controller => 'shops', :action => 'show', :as => :shop
 
 get '/shops', :controller => 'shops', :action => 'new', :as => :new_shop
 post '/shops', :controller => 'shops', :action => 'create'

 get '/shops/:id/edit', :controller => 'shops', :action => 'edit', :as => :edit_shop 
 put '/shops/:id/', :controller => 'shops', :action => 'update'

 delete 'shops/:id', :controller => 'shops', :action => 'destroy'
 
 
 root :to =>'shops#index'
end
