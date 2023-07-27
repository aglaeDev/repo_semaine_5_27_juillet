class AddSpecialtyRefToDoctorSpecialty < ActiveRecord::Migration[7.0]
  def change
    add_reference :doctor_specialties, :specialty, null: false, foreign_key: true
  end
end
