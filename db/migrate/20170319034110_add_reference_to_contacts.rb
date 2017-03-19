class AddReferenceToContacts < ActiveRecord::Migration[5.0]
  def change
    add_reference :contacts, :entity, foreign_key: true
  end
end
