class SessionsController < ApplicationController

  def new
  end

  def create
    if params[:name].nil? || params[:name].empty?
      redirect_to '/'
    else
      session[:name] = params[:name]
      redirect_to '/welcome'
    end
  end

  def welcome
    @user = current_user
  end

  def destroy
    session.delete :name
    redirect_to '/'
  end

end
