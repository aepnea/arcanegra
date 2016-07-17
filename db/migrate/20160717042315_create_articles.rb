class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.references :artist, index: true, foreign_key: true
      t.references :product, index: true, foreign_key: true
      t.string :tittle
      t.string :description
      t.text :text
      t.boolean :enable

      t.timestamps null: false
    end
  end
end
