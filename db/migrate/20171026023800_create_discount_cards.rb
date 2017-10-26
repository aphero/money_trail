class CreateDiscountCards < ActiveRecord::Migration[5.0]
  def change
    create_table :discount_cards do |t|
      t.integer :store_id
      t.integer :user_id
      t.integer :category_id

      t.timestamps
    end
  end
end
