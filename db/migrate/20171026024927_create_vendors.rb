class CreateVendors < ActiveRecord::Migration[5.0]
  def change
    create_table :vendors do |t|
      t.string :name
      t.string :description
      t.string :newsfeed_uri
      t.text :phone_number

      t.timestamps
    end
  end
end
