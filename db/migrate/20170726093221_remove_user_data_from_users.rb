class RemoveUserDataFromUsers < ActiveRecord::Migration[5.0]
  def change
    remove_column :users, :first_name
    remove_column :users, :last_name
    remove_column :users, :address
    remove_column :users, :phone_number
    remove_column :users, :profession
    remove_column :users, :beneficiary_number
    remove_column :users, :insurance_name
    remove_column :users, :insurance_address
    remove_column :users, :insurance_policy  
  end
end
