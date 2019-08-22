class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  mount_uploader :photo, PhotoUploader

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :user_events, dependent: :destroy
  has_many :availabilities, dependent: :destroy
  has_many :events, through: :user_events

  validates :name, presence: true
  validates :favorite_sports, presence: true

  validate :favorite_sports_in_list

  def user_event_for?(event)
    UserEvent.find_by(user: self, event: event)
  end

  private

  def favorite_sports_in_list
    in_the_list = (favorite_sports - Event::SPORTS).empty?
    return if in_the_list

    errors.add(:favorite_sports, :inclusion)
  end

end
