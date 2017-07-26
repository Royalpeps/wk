class ClientDataController < ApplicationController
  before_action :authenticate_user!, only: [:new, :create, :edit, :update]

  def new
    @client_datum = ClientDatum.new
  end

  def create
    @client_datum = ClientDatum.new(client_datum_params)
    @client_datum.user = current_user

    if @client_datum.save
      redirect_to root_path
      flash[:notice] = "Votre réservation a été prise en compte !"
    else
      flash[:alert] = "Une erreur s'est produite, veuillez réessayer."
      render :new
    end
  end

  def edit
  end

  def update
  end

  private

  def client_datum_params
    params.require(:client_datum).permit(:first_name, :last_name, :address, :profession, :phone_number, :beneficiary_number, :insurance_name, :insurance_address, :insurance_policy)
  end

  def set_client_datum
    @client_datum = ClientDatum.find(params[:id])
  end
end
