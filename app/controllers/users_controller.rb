class UsersController < ApplicationController
  def index
    if errors?
      flash[:error] = "You have errors"
      redirect_to '/users/'
    else
      flash[:success] = "You did it!"
      redirect_to '/users/'
    end

  end

  def create
    session[:id] = params[:id]
  end
  def log_out
    session[:id] = nil
  end

  def new
  end
end
