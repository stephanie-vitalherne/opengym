class PagesController < ApplicationController




  def home
  end

def search
end

def results

  if @results = (params[:q]).capitalize
  # @gym = Gym.where('name LIKE ?', "%#{@results}%")
  @event = Event.where('name LIKE ?', "%#{@results}%")
    @gym = Gym.find_by(params[:gym_id])
else

  @event = Event.all
end

  end


  def basketball
  end

  def football
  end

  def soccer
  end

  def other
  end

  def about
  end
end
