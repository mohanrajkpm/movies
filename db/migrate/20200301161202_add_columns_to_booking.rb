class AddColumnsToBooking < ActiveRecord::Migration[5.1]
  def change
    add_column :bookings, :user_id, :integer
    add_column :bookings, :screening_id, :integer
    add_column :bookings, :seat_id, :integer
  end
end
