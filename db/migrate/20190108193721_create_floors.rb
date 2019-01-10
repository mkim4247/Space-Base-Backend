class CreateFloors < ActiveRecord::Migration[5.2]
  def change
    create_table :floors do |t|
      t.integer :level
      t.integer :tower_id
      t.timestamps
    end
  end
end
