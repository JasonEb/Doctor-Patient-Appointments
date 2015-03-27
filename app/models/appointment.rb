# == Schema Information
#
# Table name: appointments
#
#  id                :integer          not null, primary key
#  completed         :boolean          default("f")
#  appointment_date  :date
#  doctor_patient_id :integer
#  created_at        :datetime         not null
#  updated_at        :datetime         not null
#

class Appointment < ActiveRecord::Base
	belongs_to :doctor_patient

	has_many :patients, through: :doctor_patient
	has_many :doctors, through: :doctor_patient
end
