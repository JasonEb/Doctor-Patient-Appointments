json.array!(@appointments) do |appointment|
  json.extract! appointment, :id, :completed, :appointment_date, :doctor_patient_id
  json.url appointment_url(appointment, format: :json)
end
