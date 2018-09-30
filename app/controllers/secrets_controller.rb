class SecretsController < ApplicationController

  def show
    if session[:name].nil?
      redirect_to '/'
    end
  end

end
