class GymsController < ApplicationController
  before_action :find_gym, only: %i[show edit update destroy]
  def new
    @gym = Gym.new
  end

  def create
    @gym = Gym.new(gym_params)
    if @gym.save
      flash[:notice] = 'Gym created successfully'
      redirect_to @gym
    else
redirect_back(fallback_location: gyms_path)
    end
  end

  def edit; end

  def update
    if @gym.update(gym_params)
      flash[:notice] = 'Gym updated successfully'
    else
  redirect_back(fallback_location: gyms_path)
    end
  end

  def index
    @gyms = Gym.all
    @gym = Gym.new
  end

  def show
    @event = Event.new
    @user = User.where(id: current_user.id)
   end

  def destroy
    @gym.destroy
  end

  private

  def gym_params
    params.require(:gym).permit(:name, :location, :user_id, :cover_photo, :coordinates)
  end

  def find_gym
    @gym = Gym.find(params[:id])
  end
end
