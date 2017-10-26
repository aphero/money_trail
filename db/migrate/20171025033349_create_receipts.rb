class CreateReceipts < ActiveRecord::Migration[5.0]
  def change
    create_table :receipts do |t|
      t.datetime :datetime
      t.integer :store_id
      t.string :payment_method
      t.integer :order_number
      t.decimal :total
      t.decimal :currency

      t.timestamps
    end
  end
end
