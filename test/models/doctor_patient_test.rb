# == Schema Information
#
# Table name: doctor_patients
#
#  id         :integer          not null, primary key
#  patient_id :integer
#  doctor_id  :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'test_helper'

class DoctorPatientTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
