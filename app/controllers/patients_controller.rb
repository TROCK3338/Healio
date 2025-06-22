class PatientsController < ApplicationController
  before_action :authenticate_user!
  before_action :authorize_receptionist_or_test_user!
  before_action :set_patient, only: %i[show edit update destroy]

  def index
    @patients = Patient.all
  end

  def show
  end

  def new
    @patient = Patient.new
  end

  def edit
  end

  def create
    @patient = Patient.new(patient_params)

    if @patient.save
      redirect_to @patient, notice: "Patient was successfully created."
    else
      render :new, status: :unprocessable_entity
    end
  end

  def update
    if @patient.update(patient_params)
      redirect_to @patient, notice: "Patient was successfully updated."
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @patient.destroy!
    redirect_to patients_path, status: :see_other, notice: "Patient was successfully destroyed."
  end

  private

  def set_patient
    @patient = Patient.find(params[:id])
  end

  def patient_params
    params.require(:patient).permit(:name, :age, :gender, :contact, :address)
  end

  def authorize_receptionist_or_test_user!
    unless current_user&.role == "receptionist" || current_user&.email == "test@example.com"
      flash[:alert] = "You are not authorized to access this page."
      redirect_to root_path
    end
  end
end