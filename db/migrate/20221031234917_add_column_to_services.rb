class AddColumnToServices < ActiveRecord::Migration[7.0]
  def change
    add_column :services, :duration, :integer, null: true, default: 60
  end
end
