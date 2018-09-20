class UsersController < ApplicationController
  before_action :find_user, only: %i[show edit update destroy]
  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to user_path(@user)
    else
      render 'new'
    end
  end

  def show
    unless @current_user.nil?
      unless @current_user.gyms.nil?
        @gyms = Gym.where(user_id: @current_user.id)
    end
  end
  end

  def edit; end

  def update
    if @user.update(user_params)
      flash[:notice] = 'User updated successfully'
      redirect_to @user
    else
      render 'edit'
    end
  end

  def destroy
    p "Terminating #{user.full_name} from OpenGym"
    user.destroy
    respond_to do |format|
      format.js
      format.html { p 'html response'; redirect_to root_path }
    end
  end

  private

  def user_params
    params.require(:user).permit(:first_name, :last_name, :email, :photo, :password, :password_confirmation)
  end

  def find_user
    @user = User.find(params[:id])
  end
end
