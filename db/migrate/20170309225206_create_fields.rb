class CreateFields < ActiveRecord::Migration[5.0]
  def change
    create_table :fields do |t|
      t.string :name
      t.decimal :normal_price
      t.decimal :special_price
      t.boolean :active
      t.text :other
      t.string :kind
      t.string :url1
      t.string :url2
      t.string :url3
      t.references :entity, foreign_key: true

      t.timestamps
    end
  end
end
