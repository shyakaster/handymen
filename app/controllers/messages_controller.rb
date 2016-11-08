class MessagesController < ApplicationController
  def new
    @message = Message.new
  end

  def create
    @message = Message.new(message_params)

    if @message.valid?
      MessageMailer.new_message(@message).deliver_now
      redirect_to root_path, notice: "Thank you for your message."
    else
       flash.now[:notice] = "An error occurred while delivering this message."
       render :new
    end
  end

  private

  def message_params
    params.require(:message).permit(:name, :email, :subject, :content)
  end
end
