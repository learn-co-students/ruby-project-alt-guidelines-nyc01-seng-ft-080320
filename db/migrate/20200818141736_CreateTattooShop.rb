class CreateTattooShop < ActiveRecord::Migration[5.2]
  has_many :blacklists
  has_many :artists
  has_many :appointments, through: :artists
  def change
    create_table :tattooshops do |t|
      t.string :name
  end
end
