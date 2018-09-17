class ParticipantsController < ApplicationController
  before_action :find_participant, only: %i[show edit]
  before_action :find_event, only: %i[show index edit new create]
  before_action :find_gym, only: %i[show index edit new create]
  def index
    @participant = Participant.all
  end

  def edit; end

  def show; end

  def new
    @participant = Participant.new
  end

  def create
    @participant = @event.participants.new(participant_params)
    if @participant.save!
      redirect_to gym_event_participant_path(@gym, @event, @participant)
    else
      render 'new'
    end
  end

  private

  def participant_params
    params.require(:participant).permit(:user_id, :first_name, :last_name, :email, :phone)
<<<<<<< HEAD

=======
>>>>>>> 19f2d5469c023d2ec784cea6b5c0bc74d9088297
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
