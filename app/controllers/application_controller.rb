class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_action :authenticate_user!

  before_action :set_admin

  def set_admin
    if current_user
      if current_user.email == "a@a.com" || current_user.email == "c@c.com"
        @admin = true
      end
    end
  end
end
