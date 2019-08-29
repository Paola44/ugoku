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
    @event = UserEvent.find(params[:id]).event
    @user_event = UserEvent.find(params[:id])
    if @user_event.destroy
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
end
