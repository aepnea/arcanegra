class CreateProductProductAttributes < ActiveRecord::Migration
  def change
    create_table :product_product_attributes do |t|
      t.integer :product_id
      t.integer :product_attribute_id

      t.timestamps null: false
    end
  end
end
