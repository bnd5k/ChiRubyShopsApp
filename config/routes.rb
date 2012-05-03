ChiRubyShopsApp::Application.routes.draw do
  
  resources :shops, :users, :ratings
  root :to => 'shops#index'
  match ':controller(/:action(/:id))(.:format)'

end
