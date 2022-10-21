class AddDefaultStatusToBookings < ActiveRecord::Migration[7.0]
  def change
    change_column :bookings, :status, :boolean, default: false
  end
end
