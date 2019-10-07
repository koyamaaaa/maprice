require 'rails_helper'

RSpec.describe UsersController, type: :controller do
  
  it 'routes to get users#new' do
    expect(get: "/users/new").to route_to(controller: "users", action: "new")
  end

end
