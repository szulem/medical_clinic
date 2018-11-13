# frozen_string_literal: true

class DoctorsController < ApplicationController
  before_action :set_doctor, only: %i[show edit update destroy]
  def index
    @doctors = Doctor.all.paginate(page: params[:page], per_page: 10).order('updated_at DESC')
  end

  def show; end

  def new
    @doctor = Doctor.new
  end

  def edit; end

  def create
    @doctor = Doctor.new(doctor_params)
    if @doctor.save
      redirect_to @doctor, notice: 'Doctor was successfully created.'
    else
      render 'new'
    end
  end

  def update
    if @doctor.update(doctor_params)
      redirect_to @doctor, notice: 'Doctor was successfully updated.'
    else
      render 'edit'
    end
  end

  def destroy
    @doctor.destroy
    redirect_to doctors_path, notice: 'Doctor was successfully destroyed.'
  end

  private

  def doctor_params
    params.require(:doctor).permit(:name, :surname, :description, :salary_per_hour)
    # .merge!(
    #   publisher_id: current_user.id,
    # )
  end

  def set_doctor
    @doctor = Doctor.find(params[:id])
  end
end
