## Description ##

This project is to demonstrate Rails associations with a Doctor/Patient relationship. It will involve joint associations and selective clauses to produce appointments.

## Development ##
-Patient
	-has_many DoctorPatient
-Doctor
	-Completed_Appointments

	-has_many DoctorPatient
-DoctorPatient (join)
-Appointments (join)

