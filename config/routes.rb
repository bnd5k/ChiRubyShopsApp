ChiRubyShopsApp::Application.routes.draw do
  
  resources :shops
  root :to => 'shops#index'
  match ':controller(/:action(/:id))(.:format)'
end
