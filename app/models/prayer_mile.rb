class PrayerMile < ActiveRecord::Base
  belongs_to :user

  validates :distance , numericality: { greater_than_or_equal_to: 0, less_than_or_equal_to: 100}

  def self.percent_complete
    start_date = Date.new(2016,06,12)
    current_date = Date.today
    days_walking = current_date - start_date
    ((days_walking.to_f / 120)*100).to_i
  end

end
