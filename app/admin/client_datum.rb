ActiveAdmin.register ClientDatum do
# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
# permit_params :list, :of, :attributes, :on, :model
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if params[:action] == 'create' && current_user.admin?
#   permitted
# end

index do
  selectable_column
  column :user

  column :father_first_name
  column :father_last_name
  column :father_address
  column :father_phone_number
  column :father_profession
  column :mother_first_name
  column :mother_last_name
  column :mother_address
  column :mother_phone_number
  column :mother_profession

  column :beneficiary_number
  column :insurance_name
  column :insurance_address
  column :insurance_policy
  actions
end

end
