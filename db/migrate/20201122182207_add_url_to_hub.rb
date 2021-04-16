class AddUrlToHub < ActiveRecord::Migration[6.0]
  def change
    add_column :hubs, :url, :string
  end
end
