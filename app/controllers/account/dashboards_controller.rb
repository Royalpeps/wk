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

    @events << { title: "Massage bébé", start: Time.new(2017, 8, 8, 15, 0, 0), end: Time.new(2017, 8, 8, 16, 0, 0), color: "#ee6e73"}
    @events << { title: "Rencontres musicales", start: Time.new(2017, 8, 11, 17, 0, 0), end: Time.new(2017, 8, 11, 18, 0, 0), color: "#ee6e73"}
    @events << { title: "DemoDay", start: Time.new(2017, 8, 4, 14, 0, 0), end: Time.new(2017, 8, 4, 17, 0, 0), color: "#ee6e73"}

    for i in 0...@reservation.number_of_weeks do
      @mornings.each_with_index do |morning, index|
        if morning
          @events << { title: "", start: Time.new(@reservation.starting_day.year, @reservation.starting_day.month, @reservation.starting_day.day, 8, 0) + index.day + i.week, end: Time.new(@reservation.starting_day.year, @reservation.starting_day.month, @reservation.starting_day.day, 13, 0) + index.day  + i.week }
        end
      end

      @afternoons.each_with_index do |afternoon, index|
        if afternoon
          @events << { title: "", start: Time.new(@reservation.starting_day.year, @reservation.starting_day.month, @reservation.starting_day.day, 14, 0) + index.day  + i.week, end: Time.new(@reservation.starting_day.year, @reservation.starting_day.month, @reservation.starting_day.day, 19, 0) + index.day  + i.week }
        end
      end
    end
  end
end
