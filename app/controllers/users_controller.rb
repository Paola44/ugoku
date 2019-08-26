class UsersController < ApplicationController
  def show
    @name = current_user.name
    @email = current_user.email
    @address = current_user.address
  end

  def localisation
    @user = current_user
  end

  def localisation_update
    loc = params["user"]["address"]
    lat_and_lon?(loc)

    if params[:listing] == 'matching'
      redirect_to matching_events_path
    else
      redirect_to events_path
    end
  end

  private

  def localisation_params
    params.require(:user).permit(:address, :latitude, :longitude)
  end

  def lat_and_lon?(loc)
    if params.to_s.start_with?('[')
      lat = loc.to_a[0]
      lon = loc.to_a[1]
      # params["user"]["address"] --> [47.12345, -1.12345]
      result = Geocoder.search(loc)
      current_user.update(address: result.first.display_name,
                          latitude: lat,
                          longitude: lon)
    else
      result = Geocoder.search(loc)
      lat_and_lon = result.first.coordinates
      lat = lat_and_lon.to_a[0]
      lon = lat_and_lon.to_a[1]
      current_user.update(address: result.first.display_name,
                          latitude: lat,
                          longitude: lon)
    end
  end
end
