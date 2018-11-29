class MessagesController < ApplicationController
  def create
    message = Message.new(message_params)
    saved = message.save

    if saved
      html = render_to_string partial: "messages/message", layout: false, locals: { message: message }
    else
      html = ""
    end

    render json: { created: saved, html: html }
  end

  private

  def message_params
    params.require(:message).permit(:body)
  end
end
