class ApplicationController < ActionController::Base
  protect_from_forgery prepend: true
  helper_method :current_user
# Custom parameters / Strong Parameters
  before_action :configure_permitted_parameters, if: :devise_controller?

   protected

   def configure_permitted_parameters
     devise_parameter_sanitizer.permit(:sign_up, keys: [:username, :avatar])
   end

   def after_sign_up_path_for(resource_or_scope)
    if resource_or_scope.is_a?(User)
      user_path
    else
      super
    end
  end
end
