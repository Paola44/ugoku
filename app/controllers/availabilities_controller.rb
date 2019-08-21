class AvailabilitiesController < ApplicationController
  def edit
    @availabilities = {}

    current_user.availabilities.each do |availability|
      @availabilities[availability.day_name] = availability
    end
  end

  def update
  end

  private

end
