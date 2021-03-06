MalaiNabirseu::Application.routes.draw do
  get "donates/index"

  get "donates/sponser"
  
  get "donates/create"

  get "main/index"

  get "news_events/news_details"

  get "news_events/events_details"
	
	get "news_events/news"


  ActiveAdmin.routes(self)

  devise_for :admin_users, ActiveAdmin::Devise.config

  get "pages/events"

  get "pages/children"

  get "pages/who_we_are"

  get "pages/what_we_do"

  get "pages/how_to_help"

  get "pages/donate"

  get "pages/index"

  get "pages/new"

  get "pages/show"

  get "pages/get_involved"

  get "pages/create"

  get "pages/update"

  get "pages/about_us"

  get "pages/site_map"

  get "pages/contact"
	
	 get "pages/gallary"
	
 
 	resources :news_viewers

	resources :pages do
    collection do
      get 'news_paginator'
    end
  end
  
   match '/donates/create' => 'donates#create'
   match '/donates/sponser' => 'donates#sponser'

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
   root :to => 'pages#index'

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id(.:format)))'
end
