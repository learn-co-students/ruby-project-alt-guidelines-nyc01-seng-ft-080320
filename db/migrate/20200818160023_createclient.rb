class Createclient < ActiveRecord::Migration[5.2]
  def change
    create_table :clients do |t|
      t.string :name
      t.string :location
      t.integer :blacklist_id
    end
  end
end

