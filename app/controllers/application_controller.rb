class ApplicationController < ActionController::Base
  protect_from_forgery

  def mitsubachi
    @mitsubachi ||= Mushikago::Mitsubachi::Client.new(session)
  end

  helper_method :signed_in?
  def signed_in?
    session[:api_key] && session[:secret_key]
  end

  rescue_from UnauthorizedError, :with => :handle_unauthorized_error
  def handle_unauthorized_error
    session[:api_key] = session[:secret_key] = nil
    redirect_to :root, alert: 'Invalid API KEY or SECRET KEY'
  end
end
