class NotificationsJob
  include SuckerPunch::Job

  def perform(notification_params)
    recipients = notification_params[:recipients]
    content = notification_params[:content]

    recipients.each do |recipient|
      mailer_params = { recipient: recipient,
                        content: content }
      NotificationsMailer.with(mailer_params).notify.deliver_now
    end
  end
end
