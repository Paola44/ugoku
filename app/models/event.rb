class Event < ApplicationRecord
  has_many :user_events, dependent: :destroy
  has_many :users, through: :user_events
  validates :sport, presence: true
  validates :start_at, presence: true
  validates :duration, presence: true
  validates :capacity, presence: true
  validates :address, presence: true
  validates :description, presence: true
end
