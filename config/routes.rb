Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/logout', :controller => 'sessions', :action => 'destroy', :as => 'logout'
  get '/login', :controller => 'sessions', :action => 'new', :as => 'login'
  get '/categories/:id', :controller => 'categories', :action => 'index', :as => 'categories'
  get '/categories/sub/:id', :controller => 'categories', :action => 'sub', :as => 'categories_sub'
  match '/search/post', :controller => 'search', :action => 'post', :via => 'post', :as => 'search_post'
  match '/search/:id', :controller => 'search', :action => 'show', :via => 'get', :as => 'search'
  resources :products do 
    collection do
      get 'featured'
      get 'newest'
      get 'top_sellers'
      get 'recommended'
    end
  end
  get ':controller(/:action(/:id))'
  root :to => "products#index"
end
