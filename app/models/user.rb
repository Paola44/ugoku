class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  SPORT_CATEGORIES = %w[yoga football boxe running crossfit]

  mount_uploader :photo, PhotoUploader


  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :user_events, dependent: :destroy
  has_many :availabilities, dependent: :destroy
  has_many :events, through: :user_events

  accepts_nested_attributes_for :availabilities

  validates :name, presence: true
  # validates :favorite_sports, presence: true

  # validate :favorite_sports_in_list

  after_create :setup_availabilities

  def user_event_for(event)
    UserEvent.find_by(user: self, event: event)
  end

  private

  # def favorite_sports_in_list
  #   in_the_list = (favorite_sports - Event::SPORTS).empty?
  #   return if in_the_list

  #   errors.add(:favorite_sports, :inclusion)
  # end

  def setup_availabilities
    Availability::DAYS.each do |day|
      availabilities.create(day_name: day)
    end
  end
end
