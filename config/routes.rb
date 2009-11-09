ActionController::Routing::Routes.draw do |map|
  map.resources :attachments, :collection => { :destroy_from_post => :delete }
  
  map.add_to_post '/assets/add_to_post/:id', :controller => 'assets', :action => 'add_to_post'
  
  map.resources :assets, :collection => { :edit_multiple => :post, :update_multiple => :put, :add_to_post => :get }

  map.resources :hours

  map.resources :menus

  map.access_denied_admin '/ingen_adgang', :controller => 'users', :action => 'no_access_admin'
  map.user_access '/bloggen', :controller => 'posts', :action => 'blog'
  
  map.resources :posts, :has_many => :attachments
  
  map.resources :relations

  map.resources :contents

  map.resources :recipes

  map.resources :newsarchives

  map.resources :products
  
  map.resources :users

  map.resource :session

  map.resources :pages
  
  map.resources :viewer
  
  map.resources :posts
  
  map.bloggen '/bloggen', :controller => 'posts', :action => 'blog'
  map.miniblog '/miniblog', :controller => 'posts', :action => 'mini_blog'
  map.sorter_dato '/sorter_dato', :controller => 'posts', :action => 'sorter_dato'
  map.sorter_forfatter '/sorter_forfatter', :controller => 'posts', :action => 'sorter_forfatter'
  #map.sorter_kommentar '/sorter_kommentar', :controller => 'posts', :action => 'sorter_kommentar'
  
  #Routes til migreringsdata. Du kan udkommentere dem, hvis du ikke ønsker de skal virke. (Læs: så fremmede ikke kan tilgå dem.)
  map.menus_data 'menus_data', :controller => 'menus', :action => 'menus_data'
  map.recipes_data 'recipes_data', :controller => 'recipes', :action => 'recipes_data'
  map.newsarchives_data 'newsarchives_data', :controller => 'newsarchives', :action => 'newsarchives_data'
  map.products_data 'products_data', :controller => 'products', :action => 'products_data'
  map.pages_data 'pages_data', :controller => 'pages', :action => 'pages_data'
  map.relations_data 'relations_data', :controller => 'relations', :action => 'relations_data'
  
  map.logout '/logout', :controller => 'sessions', :action => 'destroy'
  map.login '/login', :controller => 'sessions', :action => 'new'
  map.login '/admin', :controller => 'sessions', :action => 'new'
  
  map.view_page ':name', :controller => 'viewer', :action => 'show'
  map.view_product ':name', :controller => 'products', :action => 'show'
  map.view_recipe ':name', :controller => 'recipes', :action => 'show'
  #map.view_post ':name', :controller => 'posts', :action => 'show'
  
  map.access_denied_admin '/ingen_adgang', :controller => 'users', :action => 'no_access_admin'
  
  
  
  # map.view_fruit ':fruit', :controller => 'fruit', :action => 'show'
  
  # The priority is based upon order of creation: first created -> highest priority.

  # Sample of regular route:
  #   map.connect 'products/:id', :controller => 'catalog', :action => 'view'
  # Keep in mind you can assign values other than :controller and :action
  

  # Sample of named route:
  #   map.purchase 'products/:id/purchase', :controller => 'catalog', :action => 'purchase'
  # This route can be invoked with purchase_url(:id => product.id)

  # Sample resource route (maps HTTP verbs to controller actions automatically):
  #   map.resources :products

  # Sample resource route with options:
  #   map.resources :products, :member => { :short => :get, :toggle => :post }, :collection => { :sold => :get }

  # Sample resource route with sub-resources:
  #   map.resources :products, :has_many => [ :comments, :sales ], :has_one => :seller

  # Sample resource route within a namespace:
  #   map.namespace :admin do |admin|
  #     # Directs /admin/products/* to Admin::ProductsController (app/controllers/admin/products_controller.rb)
  #     admin.resources :products
  #   end

  # You can have the root of your site routed with map.root -- just remember to delete public/index.html.
  #map.root :controller => "page", :name => 'forside', :action => 'show'
  map.root :controller => "viewer", :name => 'forside', :action => 'forside'
  #map.root :controller => "pages", :id => 15
  # See how all your routes lay out with "rake routes"
  map.connect '', :controller => 'viewer', :name => 'forside', :action => 'show'
  

  # Install the default routes as the lowest priority.
  map.connect ':controller/:action/:id'
  map.connect ':controller/:action/:id.:format'
  
end
