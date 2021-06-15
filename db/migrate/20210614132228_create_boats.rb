class CreateBoats < ActiveRecord::Migration[6.0]
  def change
    create_table :boats do |t|
      t.string :type
      t.string :brand
      t.string :location
      t.integer :length
      t.integer :price_per_day
      t.integer :capacity
      t.integer :building_year
      t.integer :engine_power

      t.timestamps
    end
  end
end
