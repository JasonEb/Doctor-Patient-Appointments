require 'rails_helper'

RSpec.describe "appointments/edit", :type => :view do
  before(:each) do
    @appointment = assign(:appointment, Appointment.create!(
      :completed => false,
      :doctor_patient_id => 1
    ))
  end

  it "renders the edit appointment form" do
    render

    assert_select "form[action=?][method=?]", appointment_path(@appointment), "post" do

      assert_select "input#appointment_completed[name=?]", "appointment[completed]"

      assert_select "input#appointment_doctor_patient_id[name=?]", "appointment[doctor_patient_id]"
    end
  end
end
