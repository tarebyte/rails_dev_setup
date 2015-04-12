class CreatePelotons < ActiveRecord::Migration
  def change
    create_table :pelotons do |t|
      t.string :PelName
      t.integer :PelCaptainID
      t.string :PelWeb

      t.timestamps
    end
  end
end
