class DoctorDashboardController < ApplicationController
  before_action :authenticate_user!

  def index
    @patient_data = Patient.group_by_day(:created_at).count
  end
end