Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
  # admin_menuルーティング
  scope '/admin_menu' do
    get '/user/:id', to: 'users#show'
    put '/users/:id', to: 'users#update'
    delete 'users/:id', to: 'users#destroy'
    get 'users/singup', to: 'users#singup'
    post 'users/singup', to: 'users#create'

    resources :plans, :providers, :net_lines,
              :services, :devices, :data_capacities,
              :campaigns
  end

  resources :plans, module: 'public', only: :index do
    collection do
      get :search
    end
  end

end