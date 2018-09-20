class PagesController < ApplicationController
  before_action :find_gym, only: %i[results home basketball football soccer other]
  def search; end

  def results
    if @results = params[:q].capitalize
      # @gym = Gym.where('name LIKE ?', "%#{@results}%")
      @event = Event.where('name LIKE ? or event_type LIKE ?', "%#{@results}%", "%#{@results}%")
    end
  end

  def home
    @event = Event.all
  end

  def leaderboard
    @users = User.all.order(points: :desc)
  end

  def basketball
    @basketball = Event.where(event_type: 'basketball')
  end

  def football
    @football = Event.where(event_type: 'Football')
  end

  def soccer
    @soccer = Event.where(event_type: 'Soccer')
  end

  def other
    @other = Event.all
  end

  def about; end

  private

  def find_gym
    @gym = Gym.find_by(params[:gym_id])
  end
end
