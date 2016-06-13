class AddIntegerInsteadOfDecimal < ActiveRecord::Migration
  def change
    remove_column :prayer_miles, :distance
    add_column :prayer_miles, :distance, :integer
  end
end
