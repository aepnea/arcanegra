class RemoveGiftFromCart < ActiveRecord::Migration
  def change
    remove_column :carts, :gift, :boolean
  end
end
