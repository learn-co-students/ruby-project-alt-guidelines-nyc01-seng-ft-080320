class Artist < ActiveRecord::Base
    belongs_to :tattooshop
    has_many :appointments
    has_many :clients, through: :appointments
    has_many :clients, through: :blacklists

end