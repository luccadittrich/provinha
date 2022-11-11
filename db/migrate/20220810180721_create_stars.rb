class CreateStars < ActiveRecord::Migration[6.1]
  def change
    create_table :stars do |t|
      t.references :user, null: false, foreign_key: true
      t.references :test, null: false, foreign_key: true
      t.boolean :confirmed, default: false

      t.timestamps
    end
  end
end
