class ReservationsController < ApplicationController
  before_action :authenticate_user!, only: [:new, :create, :show]
  before_action :set_reservation, only: [:edit, :update, :show, :confirm]

  def new
    @reservation = Reservation.new
    @week = WeeklySchedule.new
  end

  def create
    @reservation = Reservation.new(reservation_params)
    
    @week = WeeklySchedule.new(week_params)
    @week.reservation = @reservation

    if @reservation.save
      @week.reservation = @reservation
      if @week.save
        redirect_to new_client_datum_path
        flash[:notice] = "Semaine type enregistrée !"
      else
        render :new
        flash[:alert] = "L'enregistrement n'a pas fonctionné, veuillez recommencer."
      end
    else
      render :new
      flash[:alert] = "L'enregistrement n'a pass fonctionné, veuillez recommencer."
    end
  end

  def edit
    @week = @reservation.weekly_schedule
  end

  def update
    @reservation = Reservation.find(params[:id])
    @reservation.update(reservation_update_params)

    @week = @reservation.weekly_schedule
    @week.update(week_update_params[:weekly_schedule_attributes])

    if @reservation.save
      if @week.save
        redirect_to reservation_path(current_user.reservation)
        flash[:notice] = "Semaine type enregistrée !"
      else
        render :new
        flash[:alert] = "L'enregistrement n'a pas fonctionné, veuillez recommencer."
      end
    else
      render :new
      flash[:alert] = "L'enregistrement n'a pass fonctionné, veuillez recommencer."
    end
  end

  def show
    @week = @reservation.weekly_schedule
  end

  def confirm
    @reservation.update(status: "Pending")

    if @reservation.save
      redirect_to reservation_path(current_user.reservation)
      flash[:notice] = "Réservation confirmée !"
    else
      flash[:alert] = "L'enregistrement n'a pas fonctionné, veuillez recommencer."
    end
  end

  private

  def set_reservation
    @reservation = Reservation.find(params[:id])
  end

  def week_params
    params.require(:weekly_schedule).permit(:worker_monday_morning, :worker_monday_afternoon, :worker_tuesday_morning, :worker_tuesday_afternoon, :worker_wednesday_morning, :worker_wednesday_afternoon, :worker_thursday_morning, :worker_thursday_afternoon, :worker_friday_morning, :worker_friday_afternoon)
  end

  def reservation_params
    params.require(:reservation).permit(:user_id, :workplace_id, :number_of_weeks)
  end

  def reservation_update_params
    params.require(:reservation).permit(:number_of_weeks, :status)
  end

  def week_update_params
    params.require(:reservation).permit(weekly_schedule_attributes: [:worker_monday_morning, :worker_monday_afternoon, :worker_tuesday_morning, :worker_tuesday_afternoon, :worker_wednesday_morning, :worker_wednesday_afternoon, :worker_thursday_morning, :worker_thursday_afternoon, :worker_friday_morning, :worker_friday_afternoon])
  end

  def status_update
    params.require(:confirm).permit(:status)
  end
end
