class CreateWireTransfers < ActiveRecord::Migration
  def change
    create_table :wire_transfers do |t|
      t.string :bank
      t.string :titular_account
      t.string :account
      t.string :account_type
      t.string :rut
      t.string :email
      t.references :payment_type, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
