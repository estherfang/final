Final::Application.routes.draw do

  # Specify a custom home page
  get "/" => "tasks#index"


  # Sign-In and Sign-Out - WORK IN PROGRESS

  get "/logout" => 'sessions#logout'
  get "/login" => 'sessions#login'
  post "/authenticate" => 'sessions#authenticate'


  # Resource: Tasks

  # --- Create
  get "/tasks/new" => 'tasks#new'
  post "/tasks" => 'tasks#create'

  # --- Read
  get "/tasks" => 'tasks#index'
  get "/tasks/:id" => 'tasks#show'

  # -- Update
  get "/tasks/:id/edit" => 'tasks#edit'
  patch "/tasks/:id" => 'tasks#update'

  # --- Delete
  delete "/tasks/:id" => 'tasks#destroy'


  # Resource: Sellers - WORK IN PROGRESS

  # --- Create
  get "/sellers/new" => 'sellers#new'
  post "/sellers" => 'sellers#create'

  # --- Read
  get "/sellers" => 'sellers#index'
  get "/sellers/:id" => 'sellers#show'

  # -- Update
  get "/sellers/:id/edit" => 'sellers#edit'
  patch "/sellers/:id" => 'sellers#update'

  # --- Delete
  delete "/sellers/:id" => 'sellers#destroy'


  # Resource: Buyers - WORK IN PROGRESS

  # --- Create
  get "/buyers/new" => 'buyers#new'
  post "/buyers" => 'buyers#create'

  # --- Read
  get "/buyers" => 'buyers#index'
  get "/buyers/:id" => 'buyers#show'

  # -- Update
  get "/buyers/:id/edit" => 'buyers#edit'
  patch "/buyers/:id" => 'buyers#update'

  # --- Delete
  delete "/buyers/:id" => 'buyers#destroy'


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
