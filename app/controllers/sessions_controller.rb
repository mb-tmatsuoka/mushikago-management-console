class SessionsController < ApplicationController
  def new
    p params
    @credential = params[:credential] ? Credential.new(params[:credential]) : Credential.new
  end

  def create
    session[:api_key] = params[:credential][:api_key]
    session[:secret_key] = params[:credential][:secret_key]
    redirect_to :projects, :notice => 'login success!'
  end

  def destroy
    session[:api_key] = nil
    session[:secret_key] = nil
    redirect_to :root, :notice => 'logout success!'
  end
end
