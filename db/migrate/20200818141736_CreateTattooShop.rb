class CreateTattooShop < ActiveRecord::Migration[5.2]
  def change
    create_table :tattooshops do |t|
      t.string :name
      t.string :location
      t.float :average_review
      t.string :ambiance
      t.float :operational_hours
      t.boolean :does_piercings?
      t.boolean :recommended?
  end
end
