class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.references :cart, index: true, foreign_key: true
      t.references :customer, index: true, foreign_key: true
      t.references :order_status, index: true, foreign_key: true
      t.references :payment_status, index: true, foreign_key: true
      t.references :payment_type, index: true, foreign_key: true
      t.references :address, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
