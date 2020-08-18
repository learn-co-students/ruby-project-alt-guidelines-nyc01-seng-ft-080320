class Appointment < ActiveRecord::Base
    belongs_to :artist
    belongs_to :client
end