class AddTypeToContacts < ActiveRecord::Migration[5.0]
  def change
    add_column :contacts, :kind, :string
  end
end
