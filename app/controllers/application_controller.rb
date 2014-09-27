class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_action :set_timezone

  private
    def set_timezone
      begin
        Time.zone = TZInfo::Country.get('JP').zone_identifiers.first
      rescue
        Time.zone = 'Tokyo'
        end
    end
end
