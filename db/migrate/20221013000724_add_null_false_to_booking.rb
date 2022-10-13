class AddNullFalseToBooking < ActiveRecord::Migration[7.0]
  def change
    change_column_null :bookings, :status, false
  end
end
