class CreateTimings < ActiveRecord::Migration[5.1]
  def change
    create_table :timings do |t|
      t.integer :movie_id
      t.integer :theater_id

      t.timestamps
    end
  end
end
