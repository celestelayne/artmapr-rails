Rails.application.routes.draw do
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  root to: 'welcome#index'

  # Example of regular route:
    get '/users', to: 'users#index', as: 'users'
    get '/users/new', to: 'users#new', as: 'new_user'
    get '/users/:id', to: 'users#show', as: 'user'
    get '/users/:id/edit', to: 'users#edit', as: 'edit_user'
    post '/users', to: 'users#create'

    patch '/users/:id', to: 'users#update'
  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products
end
