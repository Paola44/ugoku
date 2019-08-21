class EventsController < ApplicationController
  def index
    @grouped_days_events = Event.all.order('start_at ASC').group_by { |event| event.start_at.to_date }
  end
end
