class ChangeDistanceToNumeric < ActiveRecord::Migration
  def change
    remove_column :prayer_miles, :distance, :float
    add_column :prayer_miles, :distance, :decimal, precision: 5, scale: 2
  end
end
