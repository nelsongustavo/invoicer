require "rails_helper"

RSpec.describe PortionsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/portions").to route_to("portions#index")
    end

    it "routes to #new" do
      expect(:get => "/portions/new").to route_to("portions#new")
    end

    it "routes to #show" do
      expect(:get => "/portions/1").to route_to("portions#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/portions/1/edit").to route_to("portions#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/portions").to route_to("portions#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/portions/1").to route_to("portions#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/portions/1").to route_to("portions#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/portions/1").to route_to("portions#destroy", :id => "1")
    end

  end
end
