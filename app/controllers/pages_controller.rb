class PagesController < ApplicationController





  def home
    @event = Event.all
    @gym = Gym.find_by(params[:gym_id])
  end

def search
end

def results

  if @results = (params[:q]).capitalize
  # @gym = Gym.where('name LIKE ?', "%#{@results}%")
  @event = Event.where('name LIKE ? or event_type LIKE ?', "%#{@results}%", "%#{@results}%")
    @gym = Gym.find_by(params[:gym_id])
else

  @event = Event.all
end

  end


  def leaderboard
    @users = User.all.order(points: :desc)
   end


  def basketball
    @basketball = Event.where(:event_type => "Basketball")

   end


  def football
    @football = Event.where(:event_type => "football")

   end

  def soccer
    @soccer = Event.where(:event_type => "Soccer")
   end

  def other; end

  def about; end
end
