class AvailabilitiesController < ApplicationController
  def edit
  end
  def create
    Availability::DAYS.each do |day|
      avaibilities.create(day_name: day)
    end
  end


  def update
  end
end
