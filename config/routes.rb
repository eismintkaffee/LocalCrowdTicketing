Rails.application.routes.draw do
 

  devise_for :users


  resources :dashboard do
    resources :events
  end

  resources :ptickets
  get 'ptickets/:id/delete' => 'ptickets#delete', :as =>
  :ptickets_delete

  resources :users
  get 'users/:id/delete' => 'users#delete', :as =>
  :users_delete
  
  #get 'categories/index'

  #get 'categories/show'

  #get 'categories/new'

  #get 'categories/edit'

  #get 'categories/delete'

  root to:"home#index"

  resources :categories
  get 'categories/:id/delete' => 'categories#delete', :as =>
  :categories_delete

  resources :events
  get 'events/:id/delete' => 'events#delete', :as =>
  :events_delete

  resources :home
  resources :pages



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
