class ApplicationController < ActionController::Base
  protect_from_forgery

  def mitsubachi
    @mitsubachi ||= Mushikago::Mitsubachi::Client.new(session)
  end
end
