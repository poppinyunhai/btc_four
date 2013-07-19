class Admin::PresController < ApplicationController
  before_filter :admin
  def index
    @pre = Pre.page(params[:page]).per(20).order("id DESC")
  end

  def new
    @pre = Pre.new
  end

  def create
    @pre = Pre.create(params[:pre])
  end

  def destroy
    @pre = Pre.find(params[:id])
    @pre.destroy
  end

  def edit
    @pre = Pre.find(params[:id])
  end

  def update
    @pre = Pre.find(params[:id])
    @pre.update_attributes(params[:pre])
    redirect_to admin_pres_path
  end


  protected

  def admin
    if signed_in? == false
      redirect_to root_path
    end  
  end
end
