class CreateStops < ActiveRecord::Migration
  def change
    create_table :stops do |t|
      t.decimal :stop_id
      t.string :stop_name
      t.float :stop_lat
      t.float :stop_lon

      t.timestamps
    end
  end
end
