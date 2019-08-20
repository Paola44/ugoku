class Availability < ApplicationRecord
  belongs_to :user
  validates :day_name, presence: true, inclusion: { in: %w(monday tuesday wednesday thursday friday saturday sunday) }
end
