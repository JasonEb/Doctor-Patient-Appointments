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

class DoctorPatient < ActiveRecord::Base
	belongs_to :doctor
	belongs_to :patient
end
