class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
  :recoverable, :rememberable, :trackable, :validatable

  mount_uploader :profile_pic, ProfilePicUploader
  has_one :reservation, dependent: :destroy
  has_many :kids, dependent: :destroy
  has_one :weekly_schedule, through: :reservation
  has_one :client_datum, dependent: :destroy

  def name
    email
  end
end
