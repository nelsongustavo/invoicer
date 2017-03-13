require 'rails_helper'

RSpec.describe CustomersController, type: :controller do

   before(:each) do
    # @request.env['devise.mapping'] = Devise.mappings[:user]
    @customer = create(:customer)
    # sign_in @brand.user
  end
  
  describe "GET #index" do

    it "responds successfully with an HTTP 200 status code" do
      get :index
      expect(response).to be_success
      expect(response).to have_http_status(200)
    end

    it "loads all of the brands into @customer" do
      get :index
      expect(assigns(:customers)).to match_array([@customer])
    end
  end

  describe "POST #create" do
    it "Creates brand" do
      customer_params = {enrolment: "123456", name: "Nathália Cavalcante", cpf: "01369658142", email: "nathalia@gmail.com", address: "quadra SQN 305,414 asa norte"}
      expect { post :create, :customer => customer_params }.to change(Customer, :count).by(1) 
    end
  end

end
