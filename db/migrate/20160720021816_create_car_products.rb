class CreateCarProducts < ActiveRecord::Migration
  def change
    create_table :car_products do |t|
      t.references :product, index: true, foreign_key: true
      t.references :cart, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
