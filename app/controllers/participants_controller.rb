class ParticipantsController < ApplicationController
  before_action :find_participant, only: [:show, :edit]
  before_action :find_event, only: [:show, :index, :edit, :new, :create]
  before_action :find_gym, only: [:show, :index, :edit, :new, :create]
  def index
    @participant = Participant.all
  end

  def edit
  end

  def show
  end

  def new
    @participant = Participant.new
  end

  def create
    @participant = Participant.new(participant_params)
    if @participant.save!
      redirect_to gym_event_participant_path(@gym, @event, @participant)
    else
      render 'new'
    end
  end

  private

  def participant_params
  params.require(:participant).permit(:user_id, :first_name, :last_name, :email, :phone)
    end

    def find_participant
      @participant = Participant.find(params[:id])
    end

  def find_event
    @event = Event.find(params[:event_id])
  end

  def find_gym
      @gym = @event.gym
  end

end
