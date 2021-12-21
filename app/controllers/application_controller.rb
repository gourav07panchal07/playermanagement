class ApplicationController < ActionController::Base
  before_action :authenticate_user!
  skip_before_action :verify_authenticity_token
  protect_from_forgery with: :exception
  skip_before_action :verify_authenticity_token, if: -> { controller_name == 'sessions' && action_name == 'create' }
  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

    def configure_permitted_parameters
      devise_parameter_sanitizer.permit(:sign_up) { |u| u.permit(:name, :mobile,:email, :password, :password_confirmation,)}
      devise_parameter_sanitizer.permit(:account_update) { |u| u.permit(:name, :mobile,:email, :password, :current_password, :password_confirmation,:image, :team_budget, :player_price)}
    end
  
devise_group :user, contains: [:team, :playerr]     

end
