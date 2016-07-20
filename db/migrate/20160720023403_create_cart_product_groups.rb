class CreateCartProductGroups < ActiveRecord::Migration
  def change
    create_table :cart_product_groups do |t|
      t.references :product_group, index: true, foreign_key: true
      t.references :cart, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
