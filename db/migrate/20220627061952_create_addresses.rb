class CreateAddresses < ActiveRecord::Migration[6.1]
  def change
    create_table :addresses do |t|
      t.string :first_name
      t.string :last_name
      t.integer :unit_number
      t.integer :street_number
      t.string :street_name
      t.string :suburb
      t.string :state
      t.integer :post_code
      t.string :country
      t.integer :phone

      t.timestamps
    end
  end
end
