Rails.application.routes.draw do
  root to: 'static_pages#home'
  get 'static_pages/about'
  get 'static_pages/contact'

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root to: 'welcome#index'

  # Example of regular route:
    get '/users', to: 'users#index'
    get '/users/new', to: 'users#new'
    get '/users/:id', to: 'users#show'
    get '/users/:id/edit', to: 'users#edit'
    post '/users', to: 'users#create'

    get '/login', to: 'sessions#new'
    post '/sessions', to: 'sessions#create'

    patch '/users/:id', to: 'users#update'
  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products
end
