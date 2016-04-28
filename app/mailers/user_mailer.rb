class UserMailer < ActionMailer::Base
  default from: 'test@gmail.com'

  def contact_message(message, sender, name)
    @message = message
    @sender = sender
    mail(to: 'test@gmail.com', reply_to: @sender, subject: "Ви отримали email від #{name} #{sender} : #{message}")
  end
end
