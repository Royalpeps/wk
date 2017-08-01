class AddStartDateToReservations < ActiveRecord::Migration[5.0]
  def change
    add_column :reservations, :starting_day, :date
  end
end
