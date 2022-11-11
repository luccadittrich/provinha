class AddIndexToStar < ActiveRecord::Migration[6.1]
  def change
    add_index :stars, [:user_id, :test_id], unique: true
  end
end
