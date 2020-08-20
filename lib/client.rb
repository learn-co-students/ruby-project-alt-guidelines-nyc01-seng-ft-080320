class Client < ActiveRecord::Base 
    belongs_to :blacklist
    has_many :appointments 
    has_many :artists, through: :appointments
end