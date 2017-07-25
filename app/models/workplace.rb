class Workplace < ApplicationRecord
  validates :name, presence: true
  validates :address, presence: true

  has_many :users, through: :reservations
end
