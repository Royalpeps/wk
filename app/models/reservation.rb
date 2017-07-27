class Reservation < ApplicationRecord
  belongs_to :user
  belongs_to :workplace
  has_one :weekly_schedule, dependent: :destroy
  accepts_nested_attributes_for :weekly_schedule
end
