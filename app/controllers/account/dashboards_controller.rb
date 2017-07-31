class Account::DashboardsController < ApplicationController
  before_action :authenticate_user!, only: [:show]

  def show
    @reservation = current_user.reservation
    @kid = current_user.kids.first
    @week = @reservation.weekly_schedule
    @client_datum = current_user.client_datum

    @mornings = @week.worker_morning_array
    @afternoons = @week.worker_afternoon_array
    @events = []

    for i in 0...@reservation.number_of_weeks do
      @mornings.each_with_index do |morning, index|
        if morning
          @events << { start: Time.new(@reservation.starting_day.year, @reservation.starting_day.month, @reservation.starting_day.day, 8, 0) + index.day + i.week, end: Time.new(@reservation.starting_day.year, @reservation.starting_day.month, @reservation.starting_day.day, 13, 0) + index.day  + i.week }
        end
      end

      @afternoons.each_with_index do |afternoon, index|
        if afternoon
          @events << { start: Time.new(@reservation.starting_day.year, @reservation.starting_day.month, @reservation.starting_day.day, 14, 0) + index.day  + i.week, end: Time.new(@reservation.starting_day.year, @reservation.starting_day.month, @reservation.starting_day.day, 19, 0) + index.day  + i.week }
        end
      end
    end
  end
end
