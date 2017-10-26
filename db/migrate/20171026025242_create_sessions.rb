class CreateSessions < ActiveRecord::Migration[5.0]
  def change
    create_table :sessions do |t|
      t.integer :user_id
      t.integer :location_id
      t.datetime :start_time
      t.datetime :end_time

      t.timestamps
    end
  end
end
