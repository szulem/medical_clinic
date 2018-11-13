# frozen_string_literal: true

class PatientsController < ApplicationController
  before_action :set_patient, only: %i[show edit update destroy]

  def index
    @patients = Patient.all.paginate(page: params[:page], per_page: 5).order('updated_at DESC')
  end

  def show; end

  def new
    @patient = Patient.new
  end

  def edit; end

  def create
    @patient = Patient.new(patient_params)
    if @patient.save
      redirect_to @patient, notice: 'Patient was successfully created.'
    else
      render 'new'
    end
  end

  def update
    if @patient.update(patient_params)
      redirect_to @patient, notice: 'Patient was successfully updated.'
    else
      render 'edit'
    end
  end

  def destroy
    @patient.destroy
    redirect_to patients_path, notice: 'Patient was successfully destroyed.'
  end

  private

  def patient_params
    params.require(:patient).permit(:name, :surname, :age, :date_of_birth, :avatar_patient)
  end

  def set_patient
    @patient = Patient.find(params[:id])
  end
end
