class CreateCyclingProfs < ActiveRecord::Migration
  def change
    create_table :cycling_profs do |t|
      t.integer :CycID
      t.string :Type
      t.string :PacePref
      t.integer :YearStarted
      t.integer :PrefGroup

      t.timestamps
    end
  end
end
