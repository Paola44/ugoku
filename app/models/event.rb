class Event < ApplicationRecord
  SPORTS = %w(yoga football boxing running crossfit)

  has_many :user_events
  has_many :users, through: :user_events

  validates :sport, presence: true, inclusion: { in: SPORTS }
  validates :start_at, presence: true
  validates :duration, presence: true
  validates :capacity, presence: true
  validates :address, presence: true
  validates :description, presence: true
end
