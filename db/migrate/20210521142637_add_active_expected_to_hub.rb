class AddActiveExpectedToHub < ActiveRecord::Migration[6.0]
  def change
    add_column :hubs, :active_expected, :integer, default: nil
  end
end
