class SessionsController < ApplicationController
  def new
  end

  def create
    if !params[:name] || params[:name].empty?
      redirect_to controller: 'sessions', action: 'new'
    else
      session[:username] = params[:username]
      redirect_to controller: 'application', action: 'hello'
    end
  end

  def destroy
    session.delete :username
    redirect_to controller: 'application', action: 'hello'
  end

  def hello
    redirect_to controller: 'sessions', action: 'new' unless session[:name]
  end

end
