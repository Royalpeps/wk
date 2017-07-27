class CreateClientData < ActiveRecord::Migration[5.0]
  def change
    create_table :client_data do |t|
      t.string :first_name
      t.string :last_name
      t.string :address
      t.string :phone_number
      t.string :profession
      t.string :beneficiary_number
      t.string :insurance_name
      t.string :insurance_address
      t.string :insurance_policy
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
