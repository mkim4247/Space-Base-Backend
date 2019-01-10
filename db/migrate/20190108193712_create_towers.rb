class CreateTowers < ActiveRecord::Migration[5.2]
  def change
    create_table :towers do |t|
      t.string :name
      t.integer :happiness
      t.integer :funds
      t.integer :population
      t.integer :user_id
      t.timestamps
    end
  end
end
