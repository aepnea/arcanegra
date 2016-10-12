class CreateProductAttributes < ActiveRecord::Migration
  def change
    create_table :product_attributes do |t|
      t.string :name
      t.integer :product_type_id
      t.string :value

      t.timestamps null: false
    end
  end
end
