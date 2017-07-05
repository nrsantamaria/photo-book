class ApplicationController < ActionController::Base
  protect_from_forgery prepend: true
  helper_method :current_user
end
