class Artist < ActiveRecord::Base
    belongs_to :tattooshop
    has_many :appointments
    has_many :clients, through: :appointments
<<<<<<< HEAD
    has_many :clients, through: :blacklists

=======
    has_many :clients, through: :blacklist
>>>>>>> fcf1ab41f485dd146eb462ed8b0e233a39e52cc6
end