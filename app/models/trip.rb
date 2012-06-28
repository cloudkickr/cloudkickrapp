class Trip < ActiveRecord::Base
  attr_accessible :direction_id, :route_id, :service_id, :shape_id, :trip_headsign, :trip_id, :trip_short_name
end
