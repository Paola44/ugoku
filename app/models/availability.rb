class Availability < ApplicationRecord
  DAYS = %w(monday tuesday wednesday thursday friday saturday sunday)

  belongs_to :user

  validates :day_name, presence: true, inclusion: { in: DAYS }
  validates :slot_1, inclusion: { in: [true, false] }
end
