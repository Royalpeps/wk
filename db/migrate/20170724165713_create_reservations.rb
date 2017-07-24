class CreateReservations < ActiveRecord::Migration[5.0]
  def change
    create_table :reservations do |t|
      t.string :status, default: "Pending"
      t.integer :number_of_weeks

      t.timestamps
    end
  end
end
