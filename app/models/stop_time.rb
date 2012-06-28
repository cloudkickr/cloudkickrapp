class StopTime < ActiveRecord::Base
  attr_accessible :arrival_time, :departure_time, :stop_id, :stop_sequence, :trip_id
end
