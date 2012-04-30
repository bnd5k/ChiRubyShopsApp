class ShopsController < ApplicationController
  def index
    @shops = Shop.all
  end

  def show
    @shop = Shop.find_by_id(params[:id])
  end

  def new
    @shop = Shop.new
  end

  def create
    @shop = Shop.new
    if shop.save
      flash[:success] = "Added"
    else
      redirect_to new
    end
  end

  def edit
    @shop = Shop.find_by_id(params[:id])
  end

  def update
    @shop = Shop.find_by_id(params[:id])
    if @shop.update_attributes(params[:shop])
      flash[:success] = "Info Updated"
    else
      render 'edit'
    end
  end

  def destroy
    Shop.find_by_id(params[:id]).destroy
    flash[:success] = "Shop has been deleted."
    redirect_to root
  end

end
