class Blacklist < ActiveRecord::Base
    has_many :clients
    belongs_to :tattooshop
    belongs_to :artist
end