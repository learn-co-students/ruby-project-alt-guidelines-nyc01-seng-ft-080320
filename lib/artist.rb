class Artist < ActiveRecord::Base
    belongs_to :TattooShop
    has_many :appointments
    has_many :clients, through: :appointments
    has_many :clients, through: :blacklist

end