class CreatePelProfiles < ActiveRecord::Migration
  def change
    create_table :pel_profiles do |t|
      t.integer :RiderID
      t.integer :YearsRidden
      t.boolean :LivingProof
      t.boolean :HighRoller
      t.boolean :Scholar
      t.boolean :PaceSetter
      t.boolean :RoadLead
      t.boolean :GroundLead

      t.timestamps
    end
  end
end
