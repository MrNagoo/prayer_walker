class PrayerMile < ActiveRecord::Base
  belongs_to :user

  validates :distance , numericality: { greater_than_or_equal_to: 0, less_than_or_equal_to: 100}
end
