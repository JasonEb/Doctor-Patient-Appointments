require 'rails_helper'

RSpec.describe "appointments/show", :type => :view do
  before(:each) do
    @appointment = assign(:appointment, Appointment.create!(
      :completed => false,
      :doctor_patient_id => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/false/)
    expect(rendered).to match(/1/)
  end
end
