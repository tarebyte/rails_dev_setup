class CreateRides < ActiveRecord::Migration
  def change
    create_table :rides do |t|
      t.string :RideName
      t.integer :RideSponsorId
      t.datetime :RideDate
      t.datetime :RideLaunchTime
      t.string :RideTerrain
      t.integer :RideLeader
      t.string :Description

      t.timestamps
    end
  end
end
