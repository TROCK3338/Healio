class ReceptionistDashboardController < ApplicationController
  before_action :authenticate_user!
  before_action :authorize_receptionist!

  def index
    @patients = Patient.all
  end

  private

  def authorize_receptionist!
    redirect_to root_path, alert: "Access denied." unless current_user.role == "receptionist"
  end
end