class NotificationsMailer < ApplicationMailer
  def notify
    @recipient = params[:recipient]
    @content = params[:content]

    mail(to: @recipient, subject: 'Notification')
  end
end

