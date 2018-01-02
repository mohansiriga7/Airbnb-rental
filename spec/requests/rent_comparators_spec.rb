require 'rails_helper'

RSpec.describe "RentComparators", type: :request do
  describe "GET /rent_comparators" do
    it "works! (now write some real specs)" do
      get rent_comparators_path
      expect(response).to have_http_status(200)
    end
  end
end
