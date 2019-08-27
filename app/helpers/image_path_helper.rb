module ImagePathHelper
  def user_image_tag(user, options = {})
    if user.photo.present?
      cl_image_tag user.photo, options
    else
      image_tag 'user.png', options
    end
  end
end
