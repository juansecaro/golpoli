class AddTypeToContacts < ActiveRecord::Migration[5.0]
  def change
    add_column :contacts, :type, :string
  end
end
