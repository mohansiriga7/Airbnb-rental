class AirbnbHostPlace < ApplicationRecord
  geocoded_by :address
  after_validation :geocode, if: :address_changed?

  validates :name, presence: true
  validates :address, presence: true
  validates :price, presence: true
end
