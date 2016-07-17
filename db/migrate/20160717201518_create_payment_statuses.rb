class CreatePaymentStatuses < ActiveRecord::Migration
  def change
    create_table :payment_statuses do |t|
      t.string :status
      t.references :payment_type, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
