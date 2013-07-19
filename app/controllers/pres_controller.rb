class PresController < ApplicationController
  def index
    @pre = Pre.page(params[:page]).per(10).order("id DESC")
  end

  def new
    @pre = Pre.new
  end

  def create
    @pre = Pre.create(params[:pre])
    redirect_to admin_pres_path
  end

  def destroy
    @pre = Pre.find(params[:id])
    @pre.destroy
    redirect_to admin_pres_path
  end
  
end
