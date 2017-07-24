class Kid < ApplicationRecord
  belongs_to :user
  has_many :reservations, through: :users
end
