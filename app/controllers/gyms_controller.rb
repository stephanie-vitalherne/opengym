class GymsController < ApplicationController
  def new
    @gym = Gym.new
  end

  def create
    @gym = Gym.new(gym_params)
    if @gym.save
      redirect_to @gym
    else
      render 'new'
    end
  end


  def edit
        @gym = Gym.find(params[:id])
  end

  def index
    @gyms = Gym.all
  end

  def show
      @gym = Gym.find(params[:id])
  end

  def destroy
    @gym = Gym.find(params[:id])
    @gym.destroy
  end

  private

  def gym_params
    params.require(:gym).permit(:name, :location, :user_id)
  end
end
