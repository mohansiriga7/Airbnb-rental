require 'rails_helper'

RSpec.describe "airbnb_host_places/edit", type: :view do
  before(:each) do
    @airbnb_host_place = assign(:airbnb_host_place, AirbnbHostPlace.create!(
      :name => "MyString",
      :address => "MyString",
      :price => "9.99",
      :type => "",
      :no_of_guests => 1,
      :latitude => 1.5,
      :longitude => 1.5
    ))
  end

  it "renders the edit airbnb_host_place form" do
    render

    assert_select "form[action=?][method=?]", airbnb_host_place_path(@airbnb_host_place), "post" do

      assert_select "input[name=?]", "airbnb_host_place[name]"

      assert_select "input[name=?]", "airbnb_host_place[address]"

      assert_select "input[name=?]", "airbnb_host_place[price]"

      assert_select "input[name=?]", "airbnb_host_place[type]"

      assert_select "input[name=?]", "airbnb_host_place[no_of_guests]"

      assert_select "input[name=?]", "airbnb_host_place[latitude]"

      assert_select "input[name=?]", "airbnb_host_place[longitude]"
    end
  end
end
