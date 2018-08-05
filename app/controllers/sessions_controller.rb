class SessionsController < ApplicationController
  def new
  end

  def create
    session[:username] = params[:username]
    redirect_to '/'
  end

  def destroy
    session.delete :username
  end

  def hello
    redirect_to controller: 'sessions', action: 'new' unless session[:name]
  end

end
