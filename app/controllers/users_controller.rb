class UsersController < ApplicationController

  def index
    @users = User.all
  end

  def show
    @user = User.find_by_id(params[:id])
  end

  def new

  end

  def create
    @user = User.create(:name => :name, :email => :email, :password => :password)
    if @user.save
      flash[:success] = "Congrats!  You exist!"
      redirect_to shops_url
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

