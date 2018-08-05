class SessionsController < ApplicationController
  def new
  end

  def create
    if params[:name].empty? || !params[:name]
      redirect_to new
    else
      session[:username] = params[:username]
      redirect_to 'application/hello'
  end

  def destroy
    session.delete :username
  end

  def hello
    redirect_to controller: 'sessions', action: 'new' unless session[:name]
  end

end
