class Scheduleid < ApplicationRecord
	validates_presence_of :bus_id, :time, :starting_point, :destination, :bus_type
end
