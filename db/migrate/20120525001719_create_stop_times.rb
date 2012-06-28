class CreateStopTimes < ActiveRecord::Migration
  def change
    create_table :stop_times do |t|
      t.string :trip_id
      t.time :arrival_time
      t.time :departure_time
      t.decimal :stop_id
      t.decimal :stop_sequence

      t.timestamps
    end
  end
end
