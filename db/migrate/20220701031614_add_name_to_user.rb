class AddNameToUser < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :nome_completo, :string
    add_column :users, :professor, :boolean
    add_column :users, :presidente_da_classe, :boolean
  end
end
