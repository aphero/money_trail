class CreateDescriptors < ActiveRecord::Migration[5.0]
  def change
    create_table :descriptors do |t|
      t.text :foreign_key_type
      t.integer :foreign_key_id
      t.string :name
      t.integer :description_id
      t.integer :category_id

      t.timestamps
    end
  end
end
