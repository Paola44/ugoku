class UserEventsController < ApplicationController
  def create
    @event = Event.find(params[:event_id])

    user_event = UserEvent.new(event: @event, user: current_user)

    if user_event.save
      respond_to do |format|
        format.html { redirect_to events_path }
        format.js
      end
    else
      respond_to do |format|
        format.html { render '/events' }
        format.js
      end
    end
  end

  def destroy
    @user_event = UserEvent.find(params[:id])
    @user_event.destroy
    redirect_to params.fetch(:next_action, events_path), notice: "Successfully unsubscribed."
  end
end
