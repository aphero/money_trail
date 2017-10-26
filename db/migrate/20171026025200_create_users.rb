class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.text :username
      t.string :first_name
      t.string :last_name
      t.string :password_hash
      t.text :location_id

      t.timestamps
    end
  end
end
