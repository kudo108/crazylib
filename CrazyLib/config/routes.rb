CrazyLib::Application.routes.draw do
  resources :book_categories

  #admin
  match "admin/show_transactions" => 'admin#show_transactions'
  match "admin/send_email" => 'admin#send_email'
  match "admin" => 'admin#index'
  match "admin/add_book"=> "books#new"
  match "admin/show_users"=> "users#index"
  match "admin/show_books" => "books#show_all"
  match "admin/edit_books" => "books#edit"
  #what da hell is this ???
  devise_for :add_column_to_users
  #user
  #session
  devise_for :users
  #show user
  resources :users, :only => [:show]

  # get "locale/set"

  resources :usergroups

  #resources :transactions
  #transactions
  get "transactions/destroy"
  get "transactions/new"
  get "transactions/userhistory"
  #books
  get "books/view"
  get "books/search"
  resources :books
  
  resources :usergroups
  
  
  #get "books/index"
  #match "view"=>"books#view"

  #
  #
  get "home/index"
  #get "books/list_all_book"
  #match "books/"=>"books#index"
  
  #search
  #get "books/search"
  #static page
  match '/about' => 'pages#about'
  match '/contact' => 'pages#contact'
  match '/faq' => 'pages#faq'
  match 'rule' => 'pages#rule'

  root :to=>"home#index"
  # match 'locale/set(/:id)'=>'locale#set'
  # The priority is based upon order of creation:
  # first created -> highest priority.

  # Sample of regular route:
  #   match 'products/:id' => 'catalog#view'
  # Keep in mind you can assign values other than :controller and :action

  # Sample of named route:
  #   match 'products/:id/purchase' => 'catalog#purchase', :as => :purchase
  # This route can be invoked with purchase_url(:id => product.id)

  # Sample resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Sample resource route with options:
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

  # Sample resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Sample resource route with more complex sub-resources
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', :on => :collection
  #     end
  #   end

  # Sample resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end

  # You can have the root of your site routed with "root"
  # just remember to delete public/index.html.
  # root :to => 'welcome#index'

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id))(.:format)'
end
