class ChangeDistanceAttribute < ActiveRecord::Migration
  def change
    remove_column :prayer_miles, :distance
    add_column :prayer_miles, :distance, :float , precision: 4, scale: 2
  end
end
