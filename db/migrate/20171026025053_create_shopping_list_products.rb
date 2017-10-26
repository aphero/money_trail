class CreateShoppingListProducts < ActiveRecord::Migration[5.0]
  def change
    create_table :shopping_list_products do |t|
      t.integer :product_id
      t.integer :shopping_list_id

      t.timestamps
    end
  end
end
