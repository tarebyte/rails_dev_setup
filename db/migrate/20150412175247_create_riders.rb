class CreateRiders < ActiveRecord::Migration
  def change
    create_table :riders do |t|
      t.string :Name
      t.integer :Age
      t.string :Addr1
      t.string :Addr2
      t.string :City
      t.string :State
      t.integer :Zip
      t.string :Region
      t.string :email
      t.integer :phone
      t.string :password

      t.timestamps
    end
  end
end
