class ChangeLockToSeat < ActiveRecord::Migration[5.1]
  def change
  	change_column :seats, :lock, :boolean, :default => false

  end
end
