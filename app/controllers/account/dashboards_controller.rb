class Account::DashboardsController < ApplicationController
  before_action :authenticate_user!, only: [:show]

  def show
    @reservation = current_user.reservation
    @kid = current_user.kids.first
    @week = @reservation.weekly_schedule
    @client_datum = current_user.client_datum

  end

end
