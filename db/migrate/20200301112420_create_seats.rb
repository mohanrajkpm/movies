class CreateSeats < ActiveRecord::Migration[5.1]
  def change
    create_table :seats do |t|
      t.integer :theatre_id
      t.boolean :lock

      t.timestamps
    end
  end
end
