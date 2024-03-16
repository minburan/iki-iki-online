class AddUserIdToComments < ActiveRecord::Migration[6.1]
  def change
    add_column :comments, :name, :integer
  end
end
