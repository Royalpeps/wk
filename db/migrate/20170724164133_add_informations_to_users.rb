class AddInformationsToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :address, :string
    add_column :users, :phone_number, :string
    add_column :users, :profession, :string
    add_column :users, :beneficiary_number, :string
    add_column :users, :insurance_name, :string
    add_column :users, :insurance_address, :string
    add_column :users, :insurance_policy, :string
    add_column :users, :admin, :boolean, default: false
  end
end
