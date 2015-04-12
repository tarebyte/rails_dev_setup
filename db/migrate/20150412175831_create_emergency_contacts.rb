class CreateEmergencyContacts < ActiveRecord::Migration
  def change
    create_table :emergency_contacts do |t|
      t.integer :EID
      t.string :Name
      t.integer :Phone
      t.string :Relationship

      t.timestamps
    end
  end
end
