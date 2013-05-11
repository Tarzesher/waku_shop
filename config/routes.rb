WakuShop::Application.routes.draw do


  resources :wkshp_accounts

  get "wks/home"

  get "wks/help"

  get "wkshp_carts/new"

  get "wkshp_packages/new"

  get "wkshp_address_books/new"

  get "wkshp_orders/new"

  get "wkshp_products/new"

  get "wkshp_currencies/new"

  get "wkshp_shipments/new"

  get "wkshp_countries/new"

  get "wkshp_inventories/new"

  get "wkshp_departments/new"

   root :to => 'wks#home'

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id))(.:format)'
end
