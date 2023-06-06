class AddUsernameToOwners < ActiveRecord::Migration[7.0]
  def change
    add_column :owners, :username, :string
  end
end
