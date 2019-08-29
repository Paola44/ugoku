class EventsController < ApplicationController
  def index
    @grouped_days_events = Event.all.order('start_at ASC').group_by { |event| event.start_at.to_date }
    markers
  end

  def matching
    events = Event.all.order('start_at ASC').select { |event| current_user.favorite_sports.include?(event.sport) }

    @matching_events = events.select do |event|
      availability = current_user.availabilities.find_by(day_name: event.start_at.strftime('%A').downcase)

      case event.start_at.strftime("%H%M").to_i
      when 800..1000
        availability.slot_1
      when 1000..1200
        availability.slot_2
      when 1200..1400
        availability.slot_3
      when 14..1600
        availability.slot_4
      when 1600..1800
        availability.slot_5
      when 1800..2000
        availability.slot_6
      end
    end
    markers
  end

  private

  def markers
    @events = Event.geocoded
    @markers = @events.map do |event|
      {
        lat: event.latitude,
        lng: event.longitude
      }
    end
  end

  def create
    @event = Event.find(params[:event_id])

    user_event = UserEvent.new(event: @event, user: current_user)

    if user_event.save
      respond_to do |format|
        format.html { redirect_to matching_events_path }
        format.js
      end
    else
      respond_to do |format|
        format.html { render '/events/matching' }
        format.js
      end
    end
  end

  def destroy
    @event = UserEvent.find(params[:id]).event
    @user_event = UserEvent.find(params[:id])
    if @user_event.destroy
      respond_to do |format|
        format.html { redirect_to matching_events_path }
        format.js
      end
    else
      respond_to do |format|
        format.html { render '/events/matching' }
        format.js
      end
    end
  end
end
