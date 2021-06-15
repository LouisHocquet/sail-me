class AddColumnToBoats < ActiveRecord::Migration[6.0]
  def change
    add_column :boats, :title, :string
  end
end
