class LocationsController < ApplicationController
  before_action :find_location, only: %i[show edit update destroy]
  def new
    @location = Location.new
  end

  def create
    @location = Location.new(location_params)
    if @location.save
      redirect_to location_path(@location)
    else
      render 'new'
    end
  end

  def show; end

  def edit; end

  def update
    if @location.update(location_params)
      flash[:notice] = 'Location updated successfully'
    else
      render 'edit'
    end
  end

  private

  def location_params
    params.require(:location).permit(:user_id, :coordinates)
  end

  def find_location
    @location = current_user.location
  end
end
