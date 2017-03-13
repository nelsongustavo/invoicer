require 'rails_helper'

RSpec.describe PaymentMethodsController, type: :controller do

  before(:each) do
    # @request.env['devise.mapping'] = Devise.mappings[:user]
    @payment_method = create(:master_card)
    # sign_in @brand.user
  end
  
  describe "GET #index" do

    it "responds successfully with an HTTP 200 status code" do
      get :index
      expect(response).to be_success
      expect(response).to have_http_status(200)
    end

    it "loads all of the payment methods into @payment_method" do
      get :index
      expect(assigns(:payment_methods)).to match_array([@payment_method])
    end
  end

  describe "POST #create" do
    it "Creates Payment Method" do
      payment_method_params = {name: "Visa - Crédito", description: "Cartão de crédito"}
      expect { post :create, :payment_method => payment_method_params }.to change(PaymentMethod, :count).by(1) 
    end
  end
end