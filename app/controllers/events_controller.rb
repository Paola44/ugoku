class EventsController < ApplicationController
  def index
    @grouped_days_events = Event.all.order('start_at ASC').group_by { |event| event.start_at.to_date }
    markers
  end

  def matching
    events = Event.all.order('start_at ASC').select { |event| current_user.favorite_sports.include?(event.sport) }

    @matching_events = events.select do |event|
      availability = current_user.availabilities.find_by(day_name: event.start_at.strftime('%A').downcase)

      case event.start_at.strftime("%T%L").to_i
      when 8..10
        availability.slot_1
      when 10..12
        availability.slot_2
      when 12..14
        availability.slot_3
      when 14..16
        availability.slot_4
      when 16..18
        availability.slot_5
      when 18..20
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
end
