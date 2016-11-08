class MessageMailer < ApplicationMailer
    default to:   "alexshyaka@therailsshop.club"

    def new_message(message)
      @message = message

      mail from: @message.email, subject: @message.subject, body: @message.content
    end

end
