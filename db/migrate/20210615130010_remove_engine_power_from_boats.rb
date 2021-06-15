class RemoveEnginePowerFromBoats < ActiveRecord::Migration[6.0]
  def change
    remove_column :boats, :engine_power, :integer
  end
end
