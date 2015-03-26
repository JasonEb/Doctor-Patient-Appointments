json.array!(@doctor_patients) do |doctor_patient|
  json.extract! doctor_patient, :id, :patient_id, :doctor_id
  json.url doctor_patient_url(doctor_patient, format: :json)
end
