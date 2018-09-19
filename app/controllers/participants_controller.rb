class ParticipantsController < ApplicationController
  before_action :find_participant, only: %i[show edit destroy]
  before_action :find_event, only: %i[show index edit new create destroy]
  before_action :find_gym, only: %i[show index edit new create destroy]

  def index
    @participants = @event.participants
    @participant = Participant.new
  end

  def edit; end

  def show; end

  def new
    @participant = Participant.new
  end

  def create
    @participant = @event.participants.new(participant_params)
    if @participant.save!
      if logged_in?
        @user = User.find_by(id: @current_user.id)
        if @user.points.nil?
          @user.points = 0
          User.increment_counter(:points, 1)
          p @user.points
        else
User.increment_counter(:points, 1)
          p @user.points
      end
      end
      redirect_to gym_event_participants_path(@gym, @event)
    else
      render 'new'
    end
  end

  def destroy
    @participant.destroy
    redirect_to gym_event_participants_path(@gym, @event)
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
