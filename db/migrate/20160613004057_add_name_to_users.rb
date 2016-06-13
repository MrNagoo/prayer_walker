class AddNameToUsers < ActiveRecord::Migration
  def change
    add_column :users, :name, :string
    add_column :prayer_miles, :description, :text, limit: 180
  end
end
