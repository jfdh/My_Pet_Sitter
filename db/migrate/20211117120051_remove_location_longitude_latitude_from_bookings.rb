class RemoveLocationLongitudeLatitudeFromBookings < ActiveRecord::Migration[6.0]
  def change
    remove_column :bookings, :location
    remove_column :bookings, :longitude
    remove_column :bookings, :latitude
  end
end
