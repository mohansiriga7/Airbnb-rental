json.extract! airbnb_host_place, :id, :name, :address, :price, :type, :no_of_guests, :latitude, :longitude, :created_at, :updated_at
json.url airbnb_host_place_url(airbnb_host_place, format: :json)
