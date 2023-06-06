class AddLastnameToOwners < ActiveRecord::Migration[7.0]
  def change
    add_column :owners, :lastname, :string
  end
end
