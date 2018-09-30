class SessionsController < ApplicationController

  def new

  end

  def create
    if !params[:name].nil? && !params[:name].empty?
      session[:name] = params[:name]
      redirect_to '/homepage'
    else
      redirect_to '/'
    end
  end

  def show
    require_login
  end

  def destroy
    session[:name] = nil
    redirect_to '/'
  end

  private

  def require_login
    return head(:forbidden) unless session.include? :name
  end

end
