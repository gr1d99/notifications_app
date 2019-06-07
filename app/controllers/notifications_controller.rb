class NotificationsController < ApplicationController
  def create
    NotificationsJob.perform_async(notification_params)

    render json: { message: "Notifications sent" }, status: :ok
  end

  private

  def notification_params
    params.require(:notification).permit(:content, recipients: [])
  end
end
