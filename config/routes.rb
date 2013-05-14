WakuShop::Application.routes.draw do
  
  resources :wkshp_accounts
  resources :wkshp_products
  resources :wkshp_address_books
  resources :wkshp_inventories
  resources :wkshp_orders
  resources :wkshp_departments
  resources :wkshp_packages
  resources :wkshp_countries
  resources :wkshp_shipments
  #rosources :wkshp_countries
  #rosources :wkshp_shipments
  resources :wkshp_inventories
  resources :wkshp_carts
  resources :wkshp_currencies

  get "wks/help"
  get "wks/home", :to => 'wks#home'

  root :to => 'wks#home'

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id))(.:format)'
end
