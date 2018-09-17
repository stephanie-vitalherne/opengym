class EventsController < ApplicationController
  before_action :find_event, only: %i[show edit]
  before_action :find_gym, only: %i[show index edit new create]

  def index
    @event = Event.all
  end

  def new
    @event = Event.new
  end


def create
  @event = @gym.events.new(event_params)
  if @event.save
    redirect_to gym_event_path(@gym, @event)
  else
    render 'new'

  end

  def show
    @participant = Participant.new
   end




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

  def find_gym
    @gym = Gym.find(params[:gym_id])
  end
end
