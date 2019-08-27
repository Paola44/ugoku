module Profile
  class FavoriteSportsController < ApplicationController
    def edit
      @user = current_user
      if params[:origin] == 'signup'
        @url_params = favorite_sports_url(origin: 'signup')
      else
        @url_params = favorite_sports_url
      end
    end

    def update
      @user = current_user
      current_user.update(favorite_sport_params)
      if params[:origin] == 'signup'
        redirect_to availabilities_edit_path(origin: 'signup')
      else
        redirect_to dashboard_path
      end
    end

    private

    def favorite_sport_params
      params.require(:user).permit(favorite_sports: [])
    end
  end
end
