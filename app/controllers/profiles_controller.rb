class ProfilesController < ApplicationController
  def edit
    @user = current_user
  end

  def update
    if current_user.update(user_params)
      redirect_to edit_profile_path, notice: 'Profile was successfully updated.'
    else
      render :edit
    end
  end

private

  def user_params
    params.require(:user).permit(:name, :email, :address)
  end
end
