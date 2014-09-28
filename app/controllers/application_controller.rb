class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  # Make this method accessible from the views
  helper_method :is_admin?

  private

    def require_admin
      raise "Unauthorized user" unless is_admin?
    end

    def is_admin?
      current_user.andand.email == "edhalferty@gmail.com"
    end
end
