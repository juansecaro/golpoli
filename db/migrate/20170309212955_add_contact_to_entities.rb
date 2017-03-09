class AddContactToEntities < ActiveRecord::Migration[5.0]
  def change
    add_reference :entities, :contact, foreign_key: true
  end
end
