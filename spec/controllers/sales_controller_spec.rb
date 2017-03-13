require 'rails_helper'

RSpec.describe SalesController, type: :controller do

	before(:each) do
	  # @request.env['devise.mapping'] = Devise.mappings[:user]
	  @sale = create(:sale)
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
      expect(assigns(:sales)).to match_array([@sale])
    end
  end
end
