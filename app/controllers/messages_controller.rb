class MessagesController < ApplicationController

  def new
    @message = Message.new

  end

  def create
    @message = Message.new(message_params)
    if @message.save
      flash[notice] = "Message Sent."
      redirect_to new_message_path
    else
      render 'new'
    end
  end

  def show
    @message = Message.find(params[:id])
  end

private
  def message_params
    params.require(:message).permit(:to,:from,:body,:mediaUrl)
  end
end
