Katemu::Application.routes.draw do

  resources :empleados

  get "users/new"
  root 'static_pages#home'
  match '/home', to: 'static_pages#home', via: 'get'
  match '/form',   to: 'static_pages#form',   via: 'get'
  match '/help', to: 'static_pages#help', via: 'get'
  match '/personal' , to:'static_pages#personal', via: 'get'
  match '/inventario', to: 'static_pages#inventario', via: 'get'

  match  '/auth/:provider/callback', to:  'sessions#create', via:'get'
  match '/auth/failure', to: redirect('/home'), via: 'get'
  match '/signout', to: 'sessions#destroy', via:'get', as:'signout'
  resources :sessions, only: [:create, :destroy]
  resource :home, only: [:show]

  resources :empleados do
    collection { post :import }
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
  #     resources :products
  #   end
end


