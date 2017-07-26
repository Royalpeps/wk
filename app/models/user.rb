class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_one :reservation
  has_many :kids
  has_one :weekly_schedule, through: :reservation
  has_one :client_datum
end
