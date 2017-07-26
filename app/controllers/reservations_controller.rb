class ReservationsController < ApplicationController
  before_action :authenticate_user!, only: [:new, :create, :show]

  def new
    @reservation = Reservation.new(user: current_user, workplace_id: Workplace.first.id)
    @reservation.save
    @reservation.build_weekly_schedule
  end

  def edit
    @reservation = Reservation.find(params[:id])
  end

  def update
    @week = WeeklySchedule.new(reservation_params[:weekly_schedule_attributes])
    @reservation = Reservation.find(params[:id])
    @reservation.number_of_weeks = reservation_params[:number_of_weeks]
    @reservation.save

    @week.reservation = @reservation
    if @week.save
      redirect_to new_client_datum_path
      flash[:notice] = "Semaine type enregistrée !"
    else
      render :new
      flash[:alert] = "L'enregistrement n'a pas fonctionné, veuillez recommencer."
    end
  end

  def show
    @reservation = Reservation.find(params[:id])
  end

  private

  def reservation_params
    params.require(:reservation).permit(:user_id, :workplace_id, :number_of_weeks, weekly_schedule_attributes: [:worker_monday_morning])
  end
end
