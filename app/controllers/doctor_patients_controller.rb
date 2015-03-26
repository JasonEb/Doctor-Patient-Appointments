class DoctorPatientsController < ApplicationController
  before_action :set_doctor_patient, only: [:show, :edit, :update, :destroy]

  # GET /doctor_patients
  # GET /doctor_patients.json
  def index
    @doctor_patients = DoctorPatient.all
  end

  # GET /doctor_patients/1
  # GET /doctor_patients/1.json
  def show
  end

  # GET /doctor_patients/new
  def new
    @doctor_patient = DoctorPatient.new
  end

  # GET /doctor_patients/1/edit
  def edit
  end

  # POST /doctor_patients
  # POST /doctor_patients.json
  def create
    @doctor_patient = DoctorPatient.new(doctor_patient_params)

    respond_to do |format|
      if @doctor_patient.save
        format.html { redirect_to @doctor_patient, notice: 'Doctor patient was successfully created.' }
        format.json { render :show, status: :created, location: @doctor_patient }
      else
        format.html { render :new }
        format.json { render json: @doctor_patient.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /doctor_patients/1
  # PATCH/PUT /doctor_patients/1.json
  def update
    respond_to do |format|
      if @doctor_patient.update(doctor_patient_params)
        format.html { redirect_to @doctor_patient, notice: 'Doctor patient was successfully updated.' }
        format.json { render :show, status: :ok, location: @doctor_patient }
      else
        format.html { render :edit }
        format.json { render json: @doctor_patient.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /doctor_patients/1
  # DELETE /doctor_patients/1.json
  def destroy
    @doctor_patient.destroy
    respond_to do |format|
      format.html { redirect_to doctor_patients_url, notice: 'Doctor patient was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_doctor_patient
      @doctor_patient = DoctorPatient.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def doctor_patient_params
      params.require(:doctor_patient).permit(:patient_id, :doctor_id)
    end
end
