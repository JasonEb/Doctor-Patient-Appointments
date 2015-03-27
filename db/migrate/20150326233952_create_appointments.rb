class CreateAppointments < ActiveRecord::Migration
  def change
    create_table :appointments do |t|
      t.boolean :completed, default: true
      t.date :appointment_date
      t.integer :doctor_patient_id

      t.timestamps null: false
    end
  end
end
