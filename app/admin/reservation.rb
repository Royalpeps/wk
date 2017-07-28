ActiveAdmin.register Reservation do
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
  column :id
  column :number_of_weeks
  column :created_at
  column :status
  actions
end

form do |f|
  f.inputs "Reservation" do
  f.input :user
  f.input :workplace
  f.input :status, as: :select, collection: (["Acceptée", "Refusée"])
  f.input :number_of_weeks
end
  f.actions
end


end
