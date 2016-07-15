class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.integer :article_id
      t.integer :artist_id
      t.integer :product_id
      t.string :tittle
      t.string :description
      t.text :text
      t.boolean :enable

      t.timestamps null: false
    end
  end
end
