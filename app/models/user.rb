class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :user_events
  has_many :availabilities
  has_many :events, through: :user_events

  validates :name, presence: true
  validates :email, presence: true
  validates :favorite_sports, inclusion: { in: %w(Yoga Football Boxe Running Cross-fit) }
end
