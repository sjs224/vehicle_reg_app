class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :email
      t.string :name
      t.string :street
      t.string :city
      t.string :province
      t.string :postcode
      t.integer :phone

      t.timestamps
    end
  end
end
