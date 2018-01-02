FactoryBot.define do
  factory :airbnb_host_place, class: AirbnbHostPlace do
    name  'Banjara Hills'
    address 'Banjara Hills, Hyderabad, Telangana, India'
    price { BigDecimal.new('40000') }
    place_type 'Entire Place'
    no_of_guests 2
    latitude 17.4138277
    longitude 78.4397584
  end
end
