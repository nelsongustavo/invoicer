require 'rails_helper'

RSpec.describe PortionsController, type: :controller do

  before(:each) do
    # @request.env['devise.mapping'] = Devise.mappings[:user]
    @portion = create(:portion)
    # sign_in @brand.user
  end

  describe "GET #index" do

    it "responds successfully with an HTTP 200 status code" do
      get :index
      expect(response).to be_success
      expect(response).to have_http_status(200)
    end

    it "loads all of the portion into @portion" do
      get :index
      expect(assigns(:portions)).to match_array([@portion])
    end
  end
end
