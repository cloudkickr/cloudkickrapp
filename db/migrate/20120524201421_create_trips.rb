class CreateTrips < ActiveRecord::Migration
  def change
    create_table :trips do |t|
      t.decimal :route_id
      t.string :service_id
      t.string :trip_id
      t.string :trip_headsign
      t.string :trip_short_name
      t.decimal :direction_id
      t.decimal :shape_id

      t.timestamps
    end
  end
end
