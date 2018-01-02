require 'rails_helper'
require 'shoulda-matchers'


RSpec.describe AirbnbHostPlace, type: :model do

  let!(:airbnb_host_place){create(:airbnb_host_place)}

  it { is_expected.to validate_presence_of(:name) }
  it { is_expected.to validate_presence_of(:address) }
  it { is_expected.to validate_presence_of(:price) }

  it 'returns a message that indicates Profit, when valid address and Less long term rental income compared to Airbnb is provided' do
    allow(AirbnbHostPlace).to receive(:find_near_location).and_return(airbnb_host_place)
    result = AirbnbHostPlace.compare("Banjara Hills, Hyderabad, Telangana, India", 15000)
    expect(result).to include("Profit")
  end

  it 'returns a message that indicates Loss, when valid address and Less long term rental income compared to Airbnb is provided' do
    allow(AirbnbHostPlace).to receive(:find_near_location).and_return(airbnb_host_place)
    result = AirbnbHostPlace.compare("Banjara Hills, Hyderabad, Telangana, India", 60000)
    expect(result).to include("Loss")
  end

  it 'returns a message with No Airbnb Host Places found, when invalid address is provided' do
    allow(AirbnbHostPlace).to receive(:find_near_location).and_return(nil)
    result = AirbnbHostPlace.compare("invalid address", 15000)
    expect(result).to eql 'No Airbnb Host Places found.'
  end

end
