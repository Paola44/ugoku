class DashboardsController < ApplicationController
  def show
    @user_events = current_user.user_events
    @fav_sport = current_user.favorite_sports
    @availabilities = current_user.availabilities.reject { |availability| availability.slots.all?(false) }
  end
end
