require 'rails_helper'

RSpec.describe "AirbnbHostPlaces", type: :request do
  describe "GET /airbnb_host_places" do
    it "works! (now write some real specs)" do
      get airbnb_host_places_path
      expect(response).to have_http_status(200)
    end
  end
end
