class AirbnbHostPlace < ApplicationRecord
  geocoded_by :address
  after_validation :geocode, if: :address_changed?

  validates :name, presence: true
  validates :address, presence: true
  validates :price, presence: true

  def self.compare(address, long_term_rental_income)
    airbnb_place = find_near_location address
    message = ""
    if airbnb_place.present?
      if airbnb_place.price > long_term_rental_income
        message = "Profit: #{airbnb_place.price - long_term_rental_income}, comparing to monthly rental"
      else
        message = "Loss: #{long_term_rental_income - airbnb_place.price}, comparing to long term monthly rental"
      end
    else
      message = "No Airbnb Host Places found."
    end
  end

  def self.find_near_location address
    #Searching entered address in AirbnbHostPlace addresses within one mile
    near(address, 1).first
  end

end
