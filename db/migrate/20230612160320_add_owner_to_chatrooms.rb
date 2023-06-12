class AddOwnerToChatrooms < ActiveRecord::Migration[7.0]
  def change
    add_reference :chatrooms, :owner, null: false, foreign_key: true
  end
end
