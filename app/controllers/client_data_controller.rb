class ClientDataController < ApplicationController
  before_action :authenticate_user!, only: [:new, :create, :edit, :update]
  before_action :set_client_datum, only: [:edit, :update]

  def new
    @client_datum = ClientDatum.new
    @kid = Kid.new
  end

  def create
    @kid = Kid.new(kid_params)
    @kid.user = current_user

    @client_datum = ClientDatum.new(client_datum_params)
    @client_datum.user = current_user

    if @kid.save
      if @client_datum.save
        redirect_to reservation_path(current_user.reservation)
        flash[:notice] = "Votre profil a bien été enregistré !"
      else
        flash[:alert] = "Une erreur s'est produite, veuillez réessayer."
        render :new
      end
    else
      flash[:alert] = "Une erreure s'est produite, veuillez réessayer."
      render :new
    end
  end

  def edit
    @kid = current_user.kids.first
  end

  def update
    @client_datum.update(client_datum_params)
    @kid = current_user.kids.first
    @kid.update(kid_params)

    if @client_datum.save
      redirect_to reservation_path(current_user.reservation)
      flash[:notice] = "Vos modifications ont été prises en compte !"
    else
      flash[:alert] = "Une erreur s'est produite, veuillez réessayer."
      render :edit
    end
  end

  private
  def kid_params
    params.require(:kid).permit(:first_name, :last_name, :birthday, :doudou_name)
  end

  def client_datum_params
    params.require(:client_datum).permit(:father_first_name, :father_last_name, :father_address, :father_profession, :father_phone_number, :mother_first_name, :mother_last_name, :mother_address, :mother_profession, :mother_phone_number, :beneficiary_number, :insurance_name, :insurance_address, :insurance_policy)
  end

  def set_client_datum
    @client_datum = ClientDatum.find(params[:id])
  end
end
