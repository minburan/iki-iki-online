class CreateResponses < ActiveRecord::Migration[6.1]
  def change
    create_table :responses do |t|
      t.text :response
      t.integer :user_id

      t.timestamps
    end
  end
end
