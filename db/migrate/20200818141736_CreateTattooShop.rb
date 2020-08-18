class CreateTattooShop < ActiveRecord::Migration[5.2]
  def change
    create_table :tattooshops do |t|
      t.string :name
  end
end
