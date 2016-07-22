class AddQuantityToCartProductGroup < ActiveRecord::Migration
  def change
    add_column :cart_product_groups, :quantity, :integer
  end
end
