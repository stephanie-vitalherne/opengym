class EventsController < ApplicationController
  before_action :find_event, only: %i[show edit]
  before_action :find_gym, only: %i[show index edit new create]

  def index
    @events = Event.all
    @event = Event.new
  end

  def new
    @event = Event.new
  end

  def create
    @event = @gym.events.new(event_params)
    if @event.save


User.all.each do |u|
      if @event.gym.coordinates != nil && u.location != nil
      distrequest = HTTParty.get("https://maps.googleapis.com/maps/api/distancematrix/json?units=imperial&origins=" + u.location.coordinates + "&destinations=" + @event.gym.coordinates + "&key=AIzaSyDuEG7OD_U36SiWbM7HkJkom9cbzXkaq04")
        distance = JSON.parse(distrequest.body)
        @dist = distance['rows'][0]['elements'][0]['distance']['text'].gsub(" mi", "").gsub(",", "").to_f
          if @dist <= 5
            Message.create(
              user_id: u.id,
              sender_id: 0,
              subject: @event.name + " is happening nearby!",
              body: "A " + @event.event_type + " session named " + @event.name + " has been scheduled at " + @event.gym.name + " at " + @event.start_date.strftime("%y/%m/%d") + " to " + @event.end_date.strftime("%y/%m/%d") + ".",
              read: false
  )
          end
      end
    end



      redirect_to gym_event_path(@gym, @event)
    else
      render 'new'
    end
  end

  def show
    @participant = Participant.new
  end

  def edit; end

  private

  def event_params
    params.require(:event).permit(:name, :event_type, :description, :start_date, :end_date, :cover_photo)
    end

  def find_event
    @event = Event.find(params[:id])
  end

  def find_gym
    @gym = Gym.find(params[:gym_id])
  end
end
