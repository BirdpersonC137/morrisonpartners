class CreateManagedforms < ActiveRecord::Migration[5.1]
  def change
    create_table :managedforms do |t|
      t.string :full_name, null: false
      t.string :phone, null: false
      t.string :email, null: false
      t.string :withdrawals, null: false
      t.string :experience, null: false
      t.string :goals, null: false
      t.string :risk, null: false
      t.string :net_worth, null: false
      t.string :family_assets, null: false
      t.string :income, null: false
      t.string :wchance, null: false

      t.timestamps
    end
  end
end
