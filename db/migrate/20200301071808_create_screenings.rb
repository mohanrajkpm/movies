class CreateScreenings < ActiveRecord::Migration[5.1]
  def change
    create_table :screenings do |t|
      t.integer :movie_id
      t.integer :show_timing_id
      t.datetime :start_date
      t.datetime :end_date
      t.boolean :active

      t.timestamps
    end
  end
end
