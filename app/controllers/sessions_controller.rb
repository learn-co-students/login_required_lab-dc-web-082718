class SessionsController < ApplicationController

  def welcome
    @name = session[:name]
  end

  def new
  end

  def create
    if params[:name] == nil || params[:name] == ""
      redirect_to new_session_path
    else
      session[:name] = params[:name]
      redirect_to secret_path
    end
  end

  def destroy
    if session[:name] != nil
      session.delete :name
      redirect_to new_session_path
    else
      redirect_to new_session_path

    end


  end
end
