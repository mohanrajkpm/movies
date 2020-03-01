class CreateShowTimings < ActiveRecord::Migration[5.1]
  def change
    create_table :show_timings do |t|
      t.integer :theatre_id
      t.string :time
      t.decimal :fee

      t.timestamps
    end
  end
end
