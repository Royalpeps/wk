ActiveAdmin.register WeeklySchedule do
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
  column  :worker_monday_morning
  column  :worker_monday_afternoon
  column  :worker_tuesday_morning
  column  :worker_tuesday_afternoon
  column  :worker_wednesday_morning
  column  :worker_wednesday_afternoon
  column  :worker_thursday_morning
  column  :worker_thursday_afternoon
  column  :worker_friday_morning
  column  :worker_friday_afternoon
  column  :reservation_id
  actions
end

end
