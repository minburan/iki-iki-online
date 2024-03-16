class RemoveUserIdFromComments < ActiveRecord::Migration[6.1]
  def change
    remove_column :comments, :User_id, :integer
  end
end
