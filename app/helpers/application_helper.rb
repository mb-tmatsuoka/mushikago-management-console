module ApplicationHelper
  def signed_in?
    session[:api_key] && session[:secret_key]
  end
end
