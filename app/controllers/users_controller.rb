class UsersController < ApplicationController

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params(:email, :name, :password, :happiness, :nausea, :height, :tickets, :admin))
    if @user.save
      session[:user_id] = @user.id
      redirect_to user_path @user.id
    else
      redirect_to root_path
    end
  end

  def show
    if session[:user_id]
      @user = User.find(params[:id])
    else
      redirect_to root_path
    end
  end

  def update

  end

  private

  def user_params(*args)
    params.require(:user).permit(*args)
  end

end
