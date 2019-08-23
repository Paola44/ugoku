module Profile
  class FavoriteSportsController < ApplicationController
    def edit
      @user = current_user
    end
  end
end
