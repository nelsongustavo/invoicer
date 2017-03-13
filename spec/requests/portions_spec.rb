require 'rails_helper'

RSpec.describe "Portions", type: :request do
  describe "GET /portions" do
    it "works! (now write some real specs)" do
      get portions_path
      expect(response).to have_http_status(200)
    end
  end
end
