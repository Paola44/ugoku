module Profile
  class FavoriteSportsController < ApplicationController
    def edit
      @user = current_user
    end

    def update
      @user = current_user
      current_user.update(favorite_sport_params)

      redirect_to availabilities_edit_path
    end

    private

    def favorite_sport_params
      params.require(:user).permit(favorite_sports: [])
    end
  end
end
