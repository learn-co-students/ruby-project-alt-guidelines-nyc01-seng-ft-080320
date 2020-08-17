class Client < ActiveRecord::Base 
    has_many :appointments 
    has_many :artists, through: :appointments
    belongs_to :blacklists

end