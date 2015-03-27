# == Schema Information
#
# Table name: patients
#
#  id         :integer          not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Patient < ActiveRecord::Base
	has_many :doctor_patients
	has_many :doctors, through: :doctor_patients
	has_many :appointments, through: :doctor_patients
end
