class CreateAppointment < ActiveRecord::Migration[5.2]
  def change
    create_table :appointments do |t|
      t.integer :date 
      t.string :time 
      t.string :description
    end
  end
end
