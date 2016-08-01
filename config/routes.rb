Rails.application.routes.draw do

  devise_for :customers


  resources :in_shopping_carts, only: [:create,:destroy]

  get "/carrito", to: "shopping_carts#show"

  root 'home#index'

  get 'home/artists'

  get 'home/products'

  get 'home/whatwedo'




#### SCOPE ADMIN

  devise_for :admin
  devise_scope :admin do
    get '/administrators' => 'devise/sessions#new'
  end
  authenticated :admin do
    root :to => "artists#index", as: :admins

    as :admin do
      scope "/admins" do
        resources :images, only: [:create,:destroy,:new]
        resources :cart_products
        resources :cart_product_groups
        resources :orders
        resources :order_statuses
        resources :payment_statuses
        resources :wire_transfers
        resources :payment_types
        resources :carts
        resources :state_carts
        resources :product_product_groups
        resources :artist_procuct_groups
        resources :product_groups
        resources :addresses
        resources :customer_groups
        resources :articles
        resources :products
        resources :artists
        resources :cities
        resources :states
        resources :product_types
        resources :product_types
        resources :products
      end
    end
  end



  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     #   end
end
