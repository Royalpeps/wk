class AddForeignKeysToReservations < ActiveRecord::Migration[5.0]
  def change
    add_reference :reservations, :user, index: true
    add_foreign_key :reservations, :users
    add_reference :reservations, :workplace, index: true
    add_foreign_key :reservations, :workplaces
  end
end
