class AddColumnsToBookings < ActiveRecord::Migration[6.0]
  def change
    add_column :bookings, :start_date, :date
    add_column :bookings, :end_date, :date
    add_column :bookings, :accepted, :boolean, default: false
    add_reference :bookings, :boat, null: false, foreign_key: true
    add_reference :bookings, :user, null: false, foreign_key: true
  end
end
