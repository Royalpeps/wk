class Reservation < ApplicationRecord
  belongs_to :user
  belongs_to :workplace
  has_one :weekly_schedule
end
