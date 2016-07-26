class AddIpToCart < ActiveRecord::Migration
  def change
    add_column :carts, :ip, :string
  end
end
