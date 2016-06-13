class CreatePrayerMiles < ActiveRecord::Migration
  def change
    create_table :prayer_miles do |t|
      t.decimal :distance, precision: 4, scale: 2, default: 0
      t.references :user
      t.timestamps null: false
    end
  end
end
