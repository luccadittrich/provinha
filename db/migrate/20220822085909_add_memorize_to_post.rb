class AddMemorizeToPost < ActiveRecord::Migration[6.1]
  def change
    add_column :posts, :memorize, :string
  end
end
