class RemoveProductFromCart < ActiveRecord::Migration
  def change
    remove_reference :carts, :product, index: true, foreign_key: true
  end
end
