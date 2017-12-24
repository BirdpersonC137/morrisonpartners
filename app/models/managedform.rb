class Managedform < ApplicationRecord
    validates_presence_of :full_name, :phone, :email, :withdrawals, :experience,:goals, :risk, :net_worth, :family_assets, :income, :wchance    
end
