class RegistrationsController < Devise::RegistrationsController
  protected

  def after_sign_up_path_for(_)
    edit_favorite_sports_path(origin: 'signup')
  end
end
