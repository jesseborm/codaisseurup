class RegistrationsController < ApplicationController
  before_action :authenticate_user!

  def create
    @registration = current_user.registrations.create(registration_params.merge(event_id: params[:event_id]))
    # @registration.set_total_price
    # @registration.save #No need for this one because you use create

    redirect_to @registration.event, notice: "Thank you for registration!"
  end

  private

  def registration_params
    params.require(:registration).permit(:guest_count)
  end
end
