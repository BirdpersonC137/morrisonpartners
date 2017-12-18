class Appointment < ApplicationRecord
    validates_presence_of :full_name, :phone, :email, :date1
end
