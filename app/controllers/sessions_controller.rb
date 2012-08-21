class SessionsController < ApplicationController
  def new
    @credential = params[:credential] ? Credential.new(params[:credential]) : Credential.new
  end

  def create
    session[:api_key] = request[:api_key]
    session[:secret_key] = request[:secret_key]
    redirect_to :root, :notice => 'login success!'
  end

  def destroy
    session[:api_key] = nil
    session[:secret_key] = nil
    redirect_to :root, :notice => 'logout success!'
  end
end
