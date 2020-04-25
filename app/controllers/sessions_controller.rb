class SessionsController < ApplicationController
  def new
  end
  def create
    if params.include?(:name) && !params[:name].strip.empty?
      session[:name] = params[:name]
      redirect_to index_path
    else
      redirect_to login_path
    end
  end
  def show
    redirect_to login_path if !logged_in?
  end
  def destroy
    session.clear
    redirect_to login_path
  end
end
