class CreateArtists < ActiveRecord::Migration
  def change
    create_table :artists do |t|
      t.integer :artist_id
      t.string :firstname
      t.string :lastname
      t.string :short_description
      t.text :description
      t.string :email
      t.string :web
      t.string :address
      t.integer :city_id
      t.integer :state_id
      t.string :country
      t.string :phone

      t.timestamps null: false
    end
  end
end
