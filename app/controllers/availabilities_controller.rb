class AvailabilitiesController < ApplicationController
  def edit
    @availabilities = {}

    current_user.availabilities.each do |availability|
      @availabilities[availability.day_name] = availability
    end
  end

  def update

    if current_user.update(availabilities_params)
      redirect_to root_path
    else
      render :edit
    end
  end

  private

  def availabilities_params
    params.require(:user).permit(
      availabilities_attributes: [:slot_1, :slot_2, :slot_3, :slot_4, :slot_5, :slot_6]
    )
  end
end
