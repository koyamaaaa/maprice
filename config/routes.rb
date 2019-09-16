Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
  # admin_menuルーティング
  scope '/admin_menu' do
    resources :plans, :providers
  end

end
