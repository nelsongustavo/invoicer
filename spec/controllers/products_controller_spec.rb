require 'rails_helper'

RSpec.describe ProductsController, type: :controller do

  before(:each) do
	  # @request.env['devise.mapping'] = Devise.mappings[:user]
	  @product = create(:product)
	  # sign_in @brand.user
  end

  describe "GET #index" do

    it "responds successfully with an HTTP 200 status code" do
      get :index
      expect(response).to be_success
      expect(response).to have_http_status(200)
    end

    it "loads all of the product into @product" do
      get :index
      expect(assigns(:products)).to match_array([@product])
    end
  end

  describe "POST #create" do
    it "Creates product" do
      product_params = {name: "Plano Semestral", description: "<eu plano semestral", price: 10.10}
      expect { post :create, :product => product_params }.to change(Product, :count).by(1) 
    end
  end

end
