class CreateShops < ActiveRecord::Migration[5.2]
  def change
    create_table :shops do |t|
      t.string :name
      t.string :shop_type
      t.integer :floor_id
      t.timestamps
    end
  end
end
