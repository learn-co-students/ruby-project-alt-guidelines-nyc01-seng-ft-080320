class TattooShop < ActiveRecord::Base 
    has_many :blacklists
    has_many :appointments 
    has_many :artists
    has_many :clients, through: :blacklists 
    has_many :clients, through: :appointments
    has_many :artists, through: :appointments 
end