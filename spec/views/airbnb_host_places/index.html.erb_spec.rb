require 'rails_helper'

RSpec.describe "airbnb_host_places/index", type: :view do
  before(:each) do
    assign(:airbnb_host_places, [
      AirbnbHostPlace.create!(
        :name => "Name",
        :address => "Address",
        :price => "9.99",
        :type => "Type",
        :no_of_guests => 2,
        :latitude => 3.5,
        :longitude => 4.5
      ),
      AirbnbHostPlace.create!(
        :name => "Name",
        :address => "Address",
        :price => "9.99",
        :type => "Type",
        :no_of_guests => 2,
        :latitude => 3.5,
        :longitude => 4.5
      )
    ])
  end

  it "renders a list of airbnb_host_places" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Address".to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => "Type".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 3.5.to_s, :count => 2
    assert_select "tr>td", :text => 4.5.to_s, :count => 2
  end
end
