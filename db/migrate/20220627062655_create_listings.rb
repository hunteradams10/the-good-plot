class CreateListings < ActiveRecord::Migration[6.1]
  def change
    create_table :listings do |t|
      t.string :title
      t.string :author
      t.string :publisher
      t.integer :price
      t.boolean :sold
      t.integer :condition
      t.references :genre, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
