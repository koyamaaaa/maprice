require 'rails_helper'

RSpec.describe UsersController, type: :controller do
  
  describe 'GET #signup' do
    subject { get :signup }

    it "success request" do
      subject
      expect(response.status).to eq 200
    end

    it "render the singup template" do
      subject
      expect(response.body)
    end
  end
end
