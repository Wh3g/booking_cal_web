class Booking < ApplicationRecord
    validates_presence_of :name
    validates_presence_of :service
    validates_presence_of :start_time
end
