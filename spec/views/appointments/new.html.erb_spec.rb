require 'rails_helper'

RSpec.describe "appointments/new", :type => :view do
  before(:each) do
    assign(:appointment, Appointment.new(
      :completed => false,
      :doctor_patient_id => 1
    ))
  end

  it "renders new appointment form" do
    render

    assert_select "form[action=?][method=?]", appointments_path, "post" do

      assert_select "input#appointment_completed[name=?]", "appointment[completed]"

      assert_select "input#appointment_doctor_patient_id[name=?]", "appointment[doctor_patient_id]"
    end
  end
end
