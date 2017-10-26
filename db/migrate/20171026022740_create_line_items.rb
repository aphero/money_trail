class CreateLineItems < ActiveRecord::Migration[5.0]
  def change
    create_table :line_items do |t|
      t.integer :receipt_id
      t.integer :product_id
      t.boolean :on_sale
      t.decimal :list_price
      t.decimal :sale_price

      t.timestamps
    end
  end
end
