class AddSlugToProductTypes < ActiveRecord::Migration
  def change
    add_column :product_types, :slug, :string
    add_index :product_types, :slug

  end
end
