class CreateWeeklySchedules < ActiveRecord::Migration[5.0]
  def change
    create_table :weekly_schedules do |t|
      t.boolean :worker_monday_morning
      t.boolean :worker_monday_afternoon
      t.boolean :worker_tuesday_morning
      t.boolean :worker_tuesday_afternoon
      t.boolean :worker_wednesday_morning
      t.boolean :worker_wednesday_afternoon
      t.boolean :worker_thursday_morning
      t.boolean :worker_thursday_afternoon
      t.boolean :worker_friday_morning
      t.boolean :worker_friday_afternoon
      t.boolean :kid_monday_morning
      t.boolean :kid_monday_afternoon
      t.boolean :kid_tuesday_morning
      t.boolean :kid_tuesday_afternoon
      t.boolean :kid_wednesday_morning
      t.boolean :kid_wednesday_afternoon
      t.boolean :kid_thursday_morning
      t.boolean :kid_thursday_afternoon
      t.boolean :kid_friday_morning
      t.boolean :kid_friday_afternoon

      t.references :reservation, foreign_key: true

      t.timestamps
    end
  end
end
