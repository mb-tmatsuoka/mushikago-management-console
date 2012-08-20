class SessionsController < ApplicationController
  def create
    session[:api_key] = request[:api_key]
    session[:secret_key] = request[:secret_key]
    redirect_to '/projects/index'
  end
end
