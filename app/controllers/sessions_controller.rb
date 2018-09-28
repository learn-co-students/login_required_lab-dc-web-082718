class SessionsController < ApplicationController

  def new
  end

  def create
    session[:name] = params[:name]
    if !current_user || current_user == ""
      redirect_to '/login'
    else
      redirect_to '/'
    end
  end

  def destroy
    session.delete :name
    redirect_to "/login"
  end


end
