class PagesController < ApplicationController
  def search; end

  def results
    if @results = params[:q].capitalize
      # @gym = Gym.where('name LIKE ?', "%#{@results}%")
      @event = Event.where('name LIKE ? or event_type LIKE ?', "%#{@results}%", "%#{@results}%")
      @gym = Gym.find_by(params[:gym_id])
    end
  end

  def home
    @event = Event.all
    @gym = Gym.find_by(params[:gym_id])
  end

  def leaderboard
    @users = User.all.order(points: :desc)
  end

  def basketball

    @basketball = Event.where(event_type: 'Basketball')
    @gym = Gym.find_by(params[:gym_id])



  end

  def football
    @football = Event.where(event_type: 'Football')
     @gym = Gym.find_by(params[:gym_id])
  end

  def soccer
    @soccer = Event.where(event_type: 'Soccer')
     @gym = Gym.find_by(params[:gym_id])
   end

  def other

    @other = Event.all
    @gym = Gym.find_by(params[:gym_id])
  end

  def about; end
  end
