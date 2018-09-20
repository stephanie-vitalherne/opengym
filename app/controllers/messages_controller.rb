class MessagesController < ApplicationController
  before_action :find_messages, only: %i[destroy]
  before_action :find_user, only: %i[index create destroy]

  def index
    @message = Message.new
  end

  def create
    @message = @user.messages.new(message_params)
    if @message.save!
      redirect_to user_messages_path(@user, @message)
    else
      render 'new'
    end
  end

  def destroy
    @message.destroy
    redirect_to user_messages_path(@user, @message)
  end

  private

  def message_params
    params.require(:message).permit(:user_id, :sender_id, :subject, :body, :read)
  end

  def find_messages_from
    @messages_from = Participant.find(params[:id])
  end

  def find_messages_to
    @messages_to = Participant.find(params[:id])
  end

  def find_user
    @user = User.find(params[:user_id])
  end
end
