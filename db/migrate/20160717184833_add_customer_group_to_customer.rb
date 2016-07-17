class AddCustomerGroupToCustomer < ActiveRecord::Migration
  def change
    add_reference :customers, :customer_group, index: true, foreign_key: true
  end
end
