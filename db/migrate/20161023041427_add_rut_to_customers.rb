class AddRutToCustomers < ActiveRecord::Migration
  def change
    add_column :customers, :rut, :string
    add_column :customers, :firstname, :string
    add_column :customers, :lastname, :string
  end
end
