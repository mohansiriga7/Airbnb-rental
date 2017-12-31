require 'rails_helper'

RSpec.describe "airbnb_host_places/show", type: :view do
  before(:each) do
    @airbnb_host_place = assign(:airbnb_host_place, AirbnbHostPlace.create!(
      :name => "Name",
      :address => "Address",
      :price => "9.99",
      :type => "Type",
      :no_of_guests => 2,
      :latitude => 3.5,
      :longitude => 4.5
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Address/)
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(/Type/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/3.5/)
    expect(rendered).to match(/4.5/)
  end
end
