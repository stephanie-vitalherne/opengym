class LocationsController < ApplicationController
  before_action :find_location, only: %i[update destroy]

  def new
    if logged_in?

    if @current_user.location == nil
   @location = Location.new
    else
    @location = Location.find_by(user_id: @current_user.id)
    end
  end
    end



  def create
    @location = Location.new(location_params)
    if @location.save
redirect_back(fallback_location: locations_new_path)
    else
      render 'new'
    end
  end


  def update

    if @location.update(location_params)
      flash[:notice] = 'Location updated successfully'
      redirect_back(fallback_location: locations_new_path)
    else
      render 'new'
    end
  end

  private

  def location_params
    params.require(:location).permit(:user_id, :coordinates)
  end

  def find_location
    if logged_in?
    @location = Location.find_by(user_id: @current_user.id)
  end
  end

end
