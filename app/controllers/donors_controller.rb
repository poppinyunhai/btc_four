class DonorsController < ApplicationController
  def index
    @donor = Donor.page(params[:page]).per(5).order("id DESC")
  end

  def new
    @donor = Donor.new
  end

  def create
    @donor = Donor.create(params[:donor])

    redirect_to admin_donors_path
   
  end

  def destroy
    @donor = Donor.find(params[:id])
    @donor.destroy
    redirect_to admin_donors_path
  end

  def edit
    @donor = Donor.find(params[:id])
  end

  def update
    @donor = Donor.find(params[:id])
    @donor.update_attributes(params[:donor])

    redirect_to root_path
  end
end
