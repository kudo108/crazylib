CrazyLib::Application.routes.draw do
  resources :book_categories
  
  
  #admin
  match "admin/book_topic"=> "book_categories#index"
  match "admin/show_transactions" => 'admin#show_transactions'
  match "admin/send_email" => 'admin#send_email'
  match "admin" => 'admin#index'
  match "admin/add_book"=> "books#new"
  match "admin/show_users"=> "admin#show_users"
  match "admin/show_books" => "admin#show_books"
  match "admin/show_moderates" => "admin#show_moderates"
  match "admin/edit_books" => "books#edit"
  match "admin/return_book" => "transactions#search"
  #match "admin/add_moderate" => "users#add_to_moderate"
  #what da hell is this ???
  devise_for :add_column_to_users
  #user
  #session
  devise_for :users
  match "/users" => "registrations#new"
  #show user
  get "/users/add_to_moderate"
  get "/users/remove_from_moderate"
  match "users/feed_back" => "users#feed_back"
  resources :users, :only => [:show]

  # get "locale/set"
  #don't use resource user group
  #resources :usergroups

  #resources :transactions
  #transactions
  get "transactions/destroy"
  get "transactions/new"
  get "transactions/userhistory"
  #get "transactions/search"
  get "transactions/return"
  get "transactions/receive"
  #resources :transactions
  #books
  get "books/popular"
  get "books/newbook"
  get "books/view"
  get "books/search"
  match "view"=>"books#view"
  resources :books
  
  #resources :usergroups
  
 
  #get "books/index"
  #match "view"=>"books#view"

  #
  #
  #get "home/index"
  # match "home/index"=>"books#index"
  #get "books/list_all_book"
  #match "books/"=>"books#index"
  
  #search
  #get "books/search"
  #static page
  match '/about' => 'pages#about'
  match '/contact' => 'pages#contact'
  match '/faq' => 'pages#faq'
  match 'rule' => 'pages#rule'

  root :to=>"books#index"
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
