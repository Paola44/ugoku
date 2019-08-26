module Profile
  class FavoriteSportsController < ApplicationController
    def edit
      @user = current_user
      if params[:signup] == 'signup'
        @url_params = favorite_sports_url(signup: 'signup')
      else
        @url_params = favorite_sports_url
      end
    end

    def update
      @user = current_user
      current_user.update(favorite_sport_params)
      if params[:signup] == 'signup'
        redirect_to availabilities_edit_path(signup: 'signup')
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
