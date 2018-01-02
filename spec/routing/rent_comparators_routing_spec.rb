require "rails_helper"

RSpec.describe RentComparatorsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/rent_comparators").to route_to("rent_comparators#index")
    end

    it "routes to #new" do
      expect(:get => "/rent_comparators/new").to route_to("rent_comparators#new")
    end
  end
end
