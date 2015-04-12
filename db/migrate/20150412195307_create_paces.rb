class CreatePaces < ActiveRecord::Migration
  def change
    create_table :paces do |t|
      t.integer :RideID
      t.string :Pace

      t.timestamps
    end
  end
end
