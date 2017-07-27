class ChangeStatusDefaultInReservation < ActiveRecord::Migration[5.0]
  def change
    change_column_default :reservations, :status, "Draft"
  end
end
