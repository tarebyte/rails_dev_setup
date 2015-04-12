class CreateDistances < ActiveRecord::Migration
  def change
    create_table :distances do |t|
      t.integer :RideID
      t.float :Distance

      t.timestamps
    end
  end
end
