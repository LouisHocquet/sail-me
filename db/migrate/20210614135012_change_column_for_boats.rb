class ChangeColumnForBoats < ActiveRecord::Migration[6.0]
  def change
    rename_column :boats, :type, :category
  end
end
