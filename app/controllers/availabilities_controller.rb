class AvailabilitiesController < ApplicationController
  def edit
    @availabilities = {}

    current_user.availabilities.each do |availability|
      @availabilities[availability.day_name] = availability
    end
    if params[:signup] == 'signup'
      @availabilities_url = availabilities_url(signup: 'signup')
    else
      @availabilities_url = availabilities_url
    end
  end

  def update
    @availabilities = {}

    current_user.availabilities.each do |availability|
      @availabilities[availability.day_name] = availability
    end

    if current_user.update(availabilities_params)
      if params[:signup] == 'signup'
        redirect_to users_localisation_path
      else
        redirect_to matching_events_path
      end
    else
      render :edit
    end
  end

  private

  def availabilities_params
    params.require(:user).permit(
      {availabilities_attributes: [:slot_1, :slot_2, :slot_3, :slot_4, :slot_5, :slot_6, :id]}
    )
  end
end
