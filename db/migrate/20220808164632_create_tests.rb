class CreateTests < ActiveRecord::Migration[6.1]
  def change
    create_table :tests do |t|
      t.text :question, array: true, default: []

      t.boolean :private, default: false
      t.timestamps
    end
  end
end
