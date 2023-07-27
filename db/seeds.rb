Appointment.delete_all
Doctor.delete_all
Patient.delete_all
Specialty.delete_all
City.delete_all



specialties = ["Allergists/Immunologists", "Anesthesiologists", "Cardiologists", "Colon and Rectal Surgeons", "Critical Care Medicine Specialists", "Dermatologists", "Endocrinologists", "Emergency Medicine Specialists", "Family Physicians", "Gastroenterologists", "Geriatric Medicine Specialists", "Hematologists", "Hospice and Palliative Medicine Specialists", "Infectious Disease Specialists", "Internists", "Medical Geneticists", "Nephrologists", "Neurologists", "Obstetricians and Gynecologists", "Oncologists", "Ophthalmologists", "Osteopaths", "Otolaryngologists", "Pathologists", "Pediatricians", "Plastic Surgeons", "Psychiatrists", "Pulmonologists", "Radiologists", "Rheumatologists", "Sleep Medicine Specialists", "Sports Medicine Specialists", "Urologists"]
specialties.each do |specialties_name|
    Specialty.create(name: specialties_name)
end
specialties_array = Specialty.all

100.times do
    cities = City.create!(name: Faker::Address.city)
end
cities = City.all

100.times do
    doctors = Doctor.create!(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, zip_code: Faker::Address.zip, city: cities.sample)
end
doctors = Doctor.all

100.times do
    doctor_specialties = DoctorSpecialty.create!(doctor: doctors.sample, specialty: specialties_array.sample)
end

100.times do
    patients = Patient.create!(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, city: cities.sample)
end
patients = Patient.all

100.times do
    appointment = Appointment.create!(date: Faker::Date.forward, doctor: doctors.sample, patient: patients.sample, city: cities.sample)
end

