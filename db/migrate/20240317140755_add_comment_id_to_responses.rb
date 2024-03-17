class AddCommentIdToResponses < ActiveRecord::Migration[6.1]
  def change
    add_column :responses, :comment_id, :integer
  end
end
