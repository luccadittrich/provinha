class AddNameToUser < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :teacher, :boolean
    add_column :users, :president, :boolean
    add_column :users, :score, :integer, default: 0
  end
end
