class CreateLocations < ActiveRecord::Migration[5.0]
  def change
    create_table :locations do |t|
      t.string :address1
      t.string :address2
      t.string :city
      t.text :state
      t.text :country
      t.text :postal_code
      t.float :longitude
      t.float :latitude
      t.text :ip_address

      t.timestamps
    end
  end
end
