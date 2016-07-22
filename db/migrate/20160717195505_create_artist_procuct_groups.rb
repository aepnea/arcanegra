class CreateArtistProcuctGroups < ActiveRecord::Migration
  def change
    create_table :artist_procuct_groups do |t|
      t.references :product_group, index: true, foreign_key: true
      t.references :artist, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
