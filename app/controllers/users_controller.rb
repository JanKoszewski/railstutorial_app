class UsersController < ApplicationController

  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
<<<<<<< HEAD
    @title = @user.name
=======
>>>>>>> signing-up
  end

  def new
    @title = "Sign Up"
    @user = User.new
  end

  def edit
    @user = User.find(params[:id])
  end

  def create
    @user = User.new(params[:user])
<<<<<<< HEAD
    @user.save
    redirect_to user_path(@user)
=======
    if @user.save
    else 
      @title = "Sign Up"
      render 'new'
    end
>>>>>>> signing-up
  end

  def update
    @user = User.find(params[:id])
  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy
  end
end
