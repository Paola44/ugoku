class DashboardsController < ApplicationController
  def show
    @user_events = current_user.user_events.sort_by{ |event| event.event.start_at}
    @fav_sport = current_user.favorite_sports
    day_order = %w(monday tuesday wednesday thursday friday saturday sunday)
    @availabilities = current_user.availabilities.reject { |availability| availability.slots.all?(false) }.sort_by{|day| day_order.index(day.day_name)}
  end

  def destroy
    @user_event = UserEvent.find(params[:format])
    @user_event.destroy
    redirect_to dashboard_path
  end
end
