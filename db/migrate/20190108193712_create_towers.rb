class CreateTowers < ActiveRecord::Migration[5.2]
  def change
    create_table :towers do |t|
      t.string :name
      t.integer :happiness, default: 50
      t.integer :funds, default: 10000
      t.integer :population, default: 1
      t.integer :user_id
      t.timestamps
    end
  end
end
