Rails.application.routes.draw do
  get 'users/signup'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
  # admin_menuルーティング
  scope '/admin_menu' do
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