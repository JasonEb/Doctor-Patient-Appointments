## Description

This project is to demonstrate Rails associations with a Doctor/Patient relationship. It involves joint associations and conditions to produce appointments.

## Associations Exploration 
Doctor and Patients are connected through DoctorPatient. 

```ruby
class Doctor < ActiveRecord::Base
	has_many :doctor_patients
	has_many :patients, through: :doctor_patients
end

class Patient < ActiveRecord::Base
	has_many :doctor_patients
	has_many :doctors, through: :doctor_patients
end

class DoctorPatient < ActiveRecord::Base
	belongs_to :doctor
	belongs_to :patient
end
```

To implement Appointments for doctors and patients, we connect Appointment to DoctorPatient
```ruby
class DoctorPatient < ActiveRecord::Base
	belongs_to :doctor
	belongs_to :patient

	has_many :appointments
end

class Appointment < ActiveRecord::Base
	belongs_to :doctor_patient
end
```

Now we can have doctors and patients with appointments. 
```ruby
class Doctor < ActiveRecord::Base
	has_many :doctor_patients
	has_many :patients, through: :doctor_patients
	has_many :appointments, through: :doctor_patients
end

class Patient < ActiveRecord::Base
	has_many :doctor_patients
	has_many :doctors, through: :doctor_patients
	has_many :appointments, through: :doctor_patients
end
```

Finally, we can have a completed appointments association. In Appointment, we have a boolean column for "completed". Using a lambda when making an association, we can filter with conditions.
```ruby
class Doctor < ActiveRecord::Base
	has_many :doctor_patients
	has_many :patients, through: :doctor_patients
	has_many :appointments, through: :doctor_patients


	has_many :completed_appointments,  -> { where(completed: true)}, 
		through: :doctor_patients,
		source: :appointments
end
```