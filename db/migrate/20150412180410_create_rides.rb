class CreateRides < ActiveRecord::Migration
  def change
    create_table :rides do |t|
      t.string :RideName
      t.float :RideLength
      t.string :RideStartLocation
      t.integer :RideSponsorId
      t.datetime :RideDate
      t.datetime :RideLaunchTime
      t.string :RideTerrain
      t.string :RidePace
      t.integer :RideLeader

      t.timestamps
    end
  end
end
