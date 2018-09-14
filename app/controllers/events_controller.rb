class EventsController < ApplicationController

before_action :find_event, only: [:show, :edit]



  def index
    @event = Event.all
  end

  def new

    @gym = Gym.find(params[:gym_id])
    @event = Event.new
  end

def create
  @gym = Gym.find(params[:gym_id])
  @event = @gym.events.new(event_params)
  if @event.save!
    redirect_to gym_event_path(@gym, @event)
  else
    render 'new'
  end
end


  def show

  end

  def edit
  end


private

def event_params
params.require(:event).permit(:name, :event_type, :start_date, :end_date, :cover_photo)
  end

def find_event
  @event = Event.find(params[:id])
end


end
