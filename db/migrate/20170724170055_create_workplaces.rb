class CreateWorkplaces < ActiveRecord::Migration[5.0]
  def change
    create_table :workplaces do |t|
      t.string :name
      t.string :address
      t.integer :worker_spots
      t.integer :kid_spots
      t.timestamps
    end
  end
end
