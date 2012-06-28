class CreateRoutes < ActiveRecord::Migration
  def change
    create_table :routes do |t|
      t.decimal :route_id
      t.string :route_long_name
      t.decimal :route_type
      t.string :route_color
      t.string :route_text_color

      t.timestamps
    end
  end
end
