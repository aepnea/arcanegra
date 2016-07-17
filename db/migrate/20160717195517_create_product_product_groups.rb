class CreateProductProductGroups < ActiveRecord::Migration
  def change
    create_table :product_product_groups do |t|
      t.references :product, index: true, foreign_key: true
      t.references :product_group, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
