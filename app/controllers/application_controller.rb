class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :authenticate_user!
  before_action :configure_permitted_parameters, if: :devise_controller?

  def configure_permitted_parameters
  # For additional fields in app/views/devise/registrations/new.html.erb
  devise_parameter_sanitizer.permit(:sign_up, keys: [:profile_pic, :profile_pic_cache])

  # app/controllers/application_controller.rb

  def default_url_options
    { host: ENV["HOST"] || "localhost:3000" }
  end

  # For additional in app/views/devise/registrations/edit.html.erb
  # devise_parameter_sanitizer.permit(:account_update, keys: [:first_name, :last_name, :address, :phone_number, :profession, :beneficiary_number, :insurance_name, :insurance_address, :insurance_policy, :admin])
end
end
