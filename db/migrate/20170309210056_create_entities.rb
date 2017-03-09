class CreateEntities < ActiveRecord::Migration[5.0]
  def change
    create_table :entities do |t|
      t.string :name
      t.string :cif
      t.text :address
      t.string :postal_code
      t.string :city
      t.string :country
      t.string :bank
      t.string :paypal

      t.timestamps
    end
  end
end
