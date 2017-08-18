class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  

  def configure_permitted_parameters 
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name]) 
    devise_parameter_sanitizer.permit(:account_update, keys: [:name]) 
    devise_parameter_sanitizer.permit(:sign_up, keys: [:user_id]) 
    devise_parameter_sanitizer.permit(:account_update, keys: [:user_id]) 
  end

  # # Send 'em back where they came from with a slap on the wrist
  # def authority_forbidden(error)
  #   Authority.logger.warn(error.message)
  #   redirect_to request.referrer.presence || root_path, :alert => 'You are not authorized to complete that action.'
  # end
  
end
