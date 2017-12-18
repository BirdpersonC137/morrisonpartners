class CreateAppointments < ActiveRecord::Migration[5.1]
  def change
    create_table :appointments do |t|
      t.string :full_name
      t.string :phone
      t.string :email
      t.datetime :date1
      t.datetime :date2
      t.datetime :date3
      t.text :addtninfo

      t.timestamps
    end
  end
end
