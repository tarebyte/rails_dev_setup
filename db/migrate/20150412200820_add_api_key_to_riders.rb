class AddApiKeyToRiders < ActiveRecord::Migration
  def change
    add_column :riders, :api_key, :string
  end
end
