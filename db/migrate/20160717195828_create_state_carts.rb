class CreateStateCarts < ActiveRecord::Migration
  def change
    create_table :state_carts do |t|
      t.string :state

      t.timestamps null: false
    end
  end
end
