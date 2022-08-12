class CreateTests < ActiveRecord::Migration[6.1]
  def change
    create_table :tests do |t|
      t.string :question1
      t.string :question2
      t.string :question3
      t.string :question4
      t.boolean :private, default: false
      t.timestamps
    end
  end
end
