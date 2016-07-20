class RemoveProductGroupFromCart < ActiveRecord::Migration
  def change
    remove_reference :carts, :product_group, index: true, foreign_key: true
  end
end
