class CreateProductGroups < ActiveRecord::Migration
  def change
    create_table :product_groups do |t|
      t.string :name
      t.string :short_description
      t.text :description
      t.boolean :on_sale
      t.integer :price

      t.timestamps null: false
    end
  end
end
