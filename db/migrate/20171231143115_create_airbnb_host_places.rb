class CreateAirbnbHostPlaces < ActiveRecord::Migration[5.1]
  def change
    create_table :airbnb_host_places do |t|
      t.string :name
      t.string :address
      t.decimal :price
      t.string :type
      t.integer :no_of_guests
      t.float :latitude
      t.float :longitude

      t.timestamps
    end
  end
end
