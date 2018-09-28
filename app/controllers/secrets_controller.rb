class SecretsController < ApplicationController
  before_action :require_login
  skip_before_action :require_login, only: [:show]

  def show
    if !current_user
      redirect_to '/login'
    else
      session[:user] = "Maya Angelou"
    end
  end

  private

  def require_login
    return head(:forbidden) unless session.include? :user
  end

end
