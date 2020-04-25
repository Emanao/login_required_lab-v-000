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
  end
  def destroy
    session.clear
    redirect_to login_path
  end
end
