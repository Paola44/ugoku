class UserEventsController < ApplicationController
  def create
    user_event = UserEvent.new(user_event_params)
    user_event.save

    redirect_to events_path
  end

  private

  def user_event_params
    params.require(:user_event).permit()
  end
end
