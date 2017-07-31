class WeeklySchedule < ApplicationRecord
  belongs_to :reservation

  def worker_morning_array
    [self.worker_monday_morning,
     self.worker_tuesday_morning,
     self.worker_wednesday_morning,
     self.worker_thursday_morning,
     self.worker_friday_morning]
    end

  def worker_afternoon_array
    [self.worker_monday_afternoon,
     self.worker_tuesday_afternoon,
     self.worker_wednesday_afternoon,
     self.worker_thursday_afternoon,
     self.worker_friday_afternoon]
    end
end
