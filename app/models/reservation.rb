class Reservation < ApplicationRecord
  belongs_to :user
  belongs_to :workplace
  has_one :weekly_schedule, dependent: :destroy
  accepts_nested_attributes_for :weekly_schedule

  rails_admin do
      edit do
        field :status, :enum do
          enum do
            [['Acceptée'],['Refusée']]
          end
          end
        end
      end
end
