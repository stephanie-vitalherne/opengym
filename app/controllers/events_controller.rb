class EventsController < ApplicationController

before_action :find_event, only: [:show, :edit]



  def index
    @event = Event.all
  end

  def new
    @user = User.find(params[:user_id])
    # @gym = Gym.find(params[:gym_id])
    @event = Event.new
  end

def create
  @user = User.find(params[:user_id])
  @event = Event.new(event_params)
  if @event.save
    redirect_to user_path
  else
    render new
  end
end


  def show

  end

  def edit
  end


private

def event_params
params.require(:event).permit(:name, :event_type, :start_date, :end_date)
  end

def find_event
  @event = Event.find(params[:id])
end


end
