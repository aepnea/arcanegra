class RemoveGiftMessageFromCart < ActiveRecord::Migration
  def change
    remove_column :carts, :gift_message, :text
  end
end