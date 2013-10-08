class ApplicationController < ActionController::Base
  protect_from_forgery
  helper_method :current_user
  
  
  rescue_from CanCan::AccessDenied do |exception|
    flash[:error] = exception.message
    redirect_to root_url
  end


  def require_user  #Pas encore implementee
    unless current_user
      redirect_to omniauth_url, :notice => 'Vous devez etre authentifie pour acceder a cette page.'
      return false
    end
  end

  private
  def current_user
    @user || User.find(session[:user_id]) if session[:user_id]
    #binding.pry
  end
  
end
