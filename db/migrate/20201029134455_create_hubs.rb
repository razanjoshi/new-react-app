class CreateHubs < ActiveRecord::Migration[6.0]
  def change
    create_table :hubs do |t|
      t.integer :active
      t.integer :inactive
      t.integer :hub_number

      t.timestamps
    end
  end
end
