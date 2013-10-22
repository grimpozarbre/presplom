class SessionsController < ApplicationController
 
  def create
    auth = request.env["omniauth.auth"]
    user = User.find_by_uid(auth["uid"])
    if  user.as_user_type == 'User' then   # User
      #binding.pry
      session[:user_id] = user.id
      redirect_to etudiants_path, :notice => "Signed in!" 
    elsif user.as_user_type == 'Etudiant' then                                 # Etudiant
      session[:user_id] = user.id
      #binding.pry
      redirect_to edit_etudiant_path(user) #redirection vers la page de l etudiant qui vient de se logguer
    else
    end
      
      
  end
  
  def destroy
    session[:user_id] = nil
    redirect_to root_url, :notice => "Signed out!"
  end
  
  def failure
     redirect_to root_url, alert: "Authentication failed, please try again."
  end
  
end
