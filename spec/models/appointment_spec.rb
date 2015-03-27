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

require 'rails_helper'

RSpec.describe Appointment, :type => :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
