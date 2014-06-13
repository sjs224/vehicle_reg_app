class CreateVehicles < ActiveRecord::Migration
  def change
    create_table :vehicles do |t|
      t.string :licence_plate
      t.string :make
      t.string :model
      t.string :colour
      t.integer :year
      t.integer :user_id

      t.timestamps
    end
  end
end
