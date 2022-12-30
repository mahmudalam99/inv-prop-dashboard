class AddUserIdToInvDetails < ActiveRecord::Migration[7.0]
  def change
    add_column :inv_details, :user_id, :integer
    add_index :inv_details, :user_id
  end
end
