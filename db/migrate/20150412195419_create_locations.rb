class CreateLocations < ActiveRecord::Migration
  def change
    create_table :locations do |t|
      t.integer :RideID
      t.string :RideLocation

      t.timestamps
    end
  end
end
