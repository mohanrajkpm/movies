class CreateBookings < ActiveRecord::Migration[5.1]
  def change
    create_table :bookings do |t|
      t.integer :ticket_id
      t.integer :timing_id

      t.timestamps
    end
  end
end
