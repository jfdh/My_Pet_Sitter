class CreateBookings < ActiveRecord::Migration[6.0]
  def change
    create_table :bookings do |t|
      t.integer :user_id
      t.integer :pet_sitter_id
      t.date :start_date
      t.date :end_date
      t.string :location

      t.timestamps
    end
  end
end
