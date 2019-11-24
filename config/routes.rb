Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/', to: 'public/publics#index'

  # admin_menuルーティング
  scope '/admin_menu' do
    get '/', to: 'dashbords#index', as: :dashbords

    get '/users/', to: 'users#index'
    get '/users/signup', to: 'users#signup'
    post '/users/signup', to: 'users#create'
    get '/users/:id', to: 'users#show', as: :user
    get '/users/:id/edit', to: 'users#edit', as: :edit_user
    put '/users/:id', to: 'users#update'
    delete '/users/:id', to: 'users#destroy', as: :users_destroy

    get '/login', to: 'sessions#new', as: :login
    post '/login', to: 'sessions#create'
    delete '/logout', to: 'sessions#destroy', as: :logout

    resources :plans, :providers, :net_lines,
              :services, :devices, :data_capacities,
              :campaigns
  end

  resources :plans, module: 'public', only: [ :index, :show ] do
    collection do
      get :search
    end
  end

end