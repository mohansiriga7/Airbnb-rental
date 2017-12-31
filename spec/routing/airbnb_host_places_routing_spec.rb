require "rails_helper"

RSpec.describe AirbnbHostPlacesController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/airbnb_host_places").to route_to("airbnb_host_places#index")
    end

    it "routes to #new" do
      expect(:get => "/airbnb_host_places/new").to route_to("airbnb_host_places#new")
    end

    it "routes to #show" do
      expect(:get => "/airbnb_host_places/1").to route_to("airbnb_host_places#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/airbnb_host_places/1/edit").to route_to("airbnb_host_places#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/airbnb_host_places").to route_to("airbnb_host_places#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/airbnb_host_places/1").to route_to("airbnb_host_places#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/airbnb_host_places/1").to route_to("airbnb_host_places#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/airbnb_host_places/1").to route_to("airbnb_host_places#destroy", :id => "1")
    end

  end
end
