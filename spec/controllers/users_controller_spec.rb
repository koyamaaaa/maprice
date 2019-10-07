require 'rails_helper'

RSpec.describe UsersController, type: :controller do
  
  it 'routes to get users#signup' do
    expect(get: "/users/signup").to route_to(controller: "users", action: "signup")
  end

end
