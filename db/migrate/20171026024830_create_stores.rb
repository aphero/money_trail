class CreateStores < ActiveRecord::Migration[5.0]
  def change
    create_table :stores do |t|
      t.integer :location_id
      t.string :name

      t.timestamps
    end
  end
end
