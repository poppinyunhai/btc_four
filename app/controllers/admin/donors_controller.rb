class Admin::DonorsController < ApplicationController
  before_filter :admin

  def index
      @donor = Donor.page(params[:page]).per(15).order("id DESC")
  end

  def new
    @donor = Donor.new
  end

  def create
    @donor = Donor.create(params[:donor])
    if save
      redirect_to admin_donors_path
    else
      render "new"
    end
  end

  def destroy
    @donor = Donor.find(params[:id])
    @donor.destroy
  end

  def edit
    @donor = Donor.find(params[:id])
  end

  def update
    @donor = Donor.find(params[:id])
    @donor.update_attributes(params[:donor])

    redirect_to admin_donors_path
  end

  protected

  def admin
    if signed_in? == false
      redirect_to root_path
    end  
  end
end
