class CreateAdvertisers < ActiveRecord::Migration[5.0]
  def change
    create_table :advertisers do |t|
      t.string :name
      t.text :address
      t.string :cif
      t.string :city
      t.string :postal_code
      t.string :bank
      t.string :paypal
      t.text :other
      t.decimal :price
      t.datetime :start_date
      t.integer :duration
      t.string :url1
      t.string :url2
      t.string :url3
      t.integer :active_url
      t.boolean :active
      t.references :entity, foreign_key: true

      t.timestamps
    end
  end
end
