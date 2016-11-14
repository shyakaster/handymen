class MessageMailer < ApplicationMailer
    default to:   "allan@brandfield.tech"

    def new_message(message)
      @message = message

      mail from: @message.email, subject: @message.subject, body: @message.content
    end

end
