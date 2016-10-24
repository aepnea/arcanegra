Rails.application.routes.draw do


  devise_for :customers

  resources :in_shopping_carts, only: [:create,:destroy]
#  resources :product_types, only: [:show]


# Home
  root 'home#index'

# Application.html.erb
  get "/in_shopping_carts", to: "in_shopping_carts#create"

  get "/carrito", to: "shopping_carts#show"

  get "artistas", to: 'home#artists'

  get "/categorias", to: 'home#product_type'

  get "/que-hacemos", to: 'home#whatwedo'

  #get "/checkout", to: 'checkout#index'
  resources :checkout

### Lista de productos despues de categorias_path
match '/categorias/:product_type_id' => 'home#product_list', :as => :product_list, via: [:get]


### Ficha de Producto
  match '/productos/:product_id' => 'home#product_sheet', :as => :product_sheet, via: [:get]


##### Ficha de artista
  match '/artistas/:artist_id' => 'home#artist_sheet', :as => :artist_sheet, via: [:get]




  #get "home/product_sheet"
  #Home
  #<%= link_to home_product_sheet_path(:product_id => p.id)  do %>
  #product_sheet view
  #<%= link_to home_product_sheet_path(:product_id => p.id)  do %>
  #get "/product_sheet/:product_id", to: "home#product_sheet"
  #<%= link_to product_sheet_path(:product_id => p.id) do%>
  #<%= link_to product_sheet_path(:product_id => p.id)  do %>

  #get '/:artist_id/:product_id/', to:  "home#product_sheet"
#resources :home

  ### prueba friendly_id
  match 'home' => 'home#index', :as => :home, via: [:get, :post]

  #resources :home do
  #  member do
  #    get :product_sheet
  #  end
  #end
  #match ':controller(/:action(/:id))(.:format)', via: [:get, :post]

### prueba friendly_id fin


#### SCOPE ADMIN

  devise_for :admin
  devise_scope :admin do
    get '/panel/administrators' => 'devise/sessions#new'
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
        resources :product_types, only: [:create,:destroy,:new,:edit]
        #resources :product_types
        resources :product_product_attributes
        resources :product_attributes
        resources :products
      end
    end
  end

end
