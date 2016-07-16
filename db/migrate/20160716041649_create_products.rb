class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.references :product_type, index: true, foreign_key: true
      t.references :artist, index: true, foreign_key: true
      t.string :name
      t.string :short_description
      t.text :description
      t.boolean :on_sale
      t.integer :price

      t.timestamps null: false
    end
  end
end
