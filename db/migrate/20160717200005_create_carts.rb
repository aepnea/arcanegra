class CreateCarts < ActiveRecord::Migration
  def change
    create_table :carts do |t|
      t.references :customer, index: true, foreign_key: true
      t.references :product, index: true, foreign_key: true
      t.references :product_group, index: true, foreign_key: true
      t.references :state_cart, index: true, foreign_key: true
      t.boolean :gift
      t.text :gift_message
      t.integer :total_price

      t.timestamps null: false
    end
  end
end
