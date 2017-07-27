class AddMotherToClientData < ActiveRecord::Migration[5.0]
  def change
    remove_column :client_data, :first_name
    remove_column :client_data, :last_name
    remove_column :client_data, :address
    remove_column :client_data, :phone_number
    remove_column :client_data, :profession

    add_column :client_data, :father_first_name, :string
    add_column :client_data, :father_last_name, :string
    add_column :client_data, :father_address, :string
    add_column :client_data, :father_phone_number, :string
    add_column :client_data, :father_profession, :string

    add_column :client_data, :mother_first_name, :string
    add_column :client_data, :mother_last_name, :string
    add_column :client_data, :mother_address, :string
    add_column :client_data, :mother_phone_number, :string
    add_column :client_data, :mother_profession, :string
  end
end
