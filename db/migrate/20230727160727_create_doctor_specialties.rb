class CreateDoctorSpecialties < ActiveRecord::Migration[7.0]
  def change
    create_table :doctor_specialties do |t|

      t.timestamps
    end
  end
end
