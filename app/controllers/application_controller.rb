class ApplicationController < ActionController::Base
  protect_from_forgery
  rescue_from UnauthorizedError, :with => :handle_unauthorized_error

  def mitsubachi
    @mitsubachi ||= Mushikago::Mitsubachi::Client.new(session)
  end

  def handle_unauthorized_error
    redirect_to :root, alert: 'Invalid API KEY or SECRET KEY'
  end
end
