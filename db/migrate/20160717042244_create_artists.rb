class CreateArtists < ActiveRecord::Migration
  def change
    create_table :artists do |t|
      t.string :firstname
      t.string :lastname
      t.string :short_description
      t.text :description
      t.string :email
      t.string :web
      t.string :address
      t.references :city, index: true, foreign_key: true
      t.references :state, index: true, foreign_key: true
      t.string :country
      t.string :phone

      t.timestamps null: false
    end
  end
end
