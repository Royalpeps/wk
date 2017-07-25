class Kid < ApplicationRecord
  belongs_to :user
  has_one :reservation, through: :user
  has_one :weekly_schedule, through: :reservation

  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :birthday, presence: true
end
