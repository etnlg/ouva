class AddFistnameToOwners < ActiveRecord::Migration[7.0]
  def change
    add_column :owners, :firstname, :string
  end
end
