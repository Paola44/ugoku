class Availability < ApplicationRecord
  belongs_to :user
  validates :day_name, presence: true, inclusion: { in: %w(Monday Tuesday Wednesday Thursday Friday Saturday Sunday) }
end
