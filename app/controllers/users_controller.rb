class UsersController < ApplicationController

  def index
    @users = User.all
  end

  def show
    @user = User.find_by_id(params[:id])
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(params[:user]) 
    if @user.save
      flash[:success] = "Congrats!  You exist!"
      redirect_to users_url
    else
      render 'new'
    end
  end

  def edit
    @user = User.find_by_id(params[:id])
  end

  def update
    @user = User.find_by_id(params[:id])
    if @user.attributes_update(params[:user])
      flash[:success] = "Profile Updated"
      redirect_to users_url
    else
      render 'edit'
    end
  end

  def delete
    User.find_by_id(params[:id]).destroy
    flash[:success] = "Fine.  We didn't like you anyway."
    redirect_to shops_url
  end
  
end

