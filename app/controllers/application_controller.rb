class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  prepend_after_filter { Rack::MiniProfiler.authorize_request } if Rails.env.development?
end
