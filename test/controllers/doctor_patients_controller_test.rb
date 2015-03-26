require 'test_helper'

class DoctorPatientsControllerTest < ActionController::TestCase
  setup do
    @doctor_patient = doctor_patients(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:doctor_patients)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create doctor_patient" do
    assert_difference('DoctorPatient.count') do
      post :create, doctor_patient: { doctor_id: @doctor_patient.doctor_id, patient_id: @doctor_patient.patient_id }
    end

    assert_redirected_to doctor_patient_path(assigns(:doctor_patient))
  end

  test "should show doctor_patient" do
    get :show, id: @doctor_patient
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @doctor_patient
    assert_response :success
  end

  test "should update doctor_patient" do
    patch :update, id: @doctor_patient, doctor_patient: { doctor_id: @doctor_patient.doctor_id, patient_id: @doctor_patient.patient_id }
    assert_redirected_to doctor_patient_path(assigns(:doctor_patient))
  end

  test "should destroy doctor_patient" do
    assert_difference('DoctorPatient.count', -1) do
      delete :destroy, id: @doctor_patient
    end

    assert_redirected_to doctor_patients_path
  end
end
