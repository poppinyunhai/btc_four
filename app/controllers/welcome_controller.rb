class WelcomeController < ApplicationController
  def index
    @donor = Donor.page(params[:page]).per(18).order("id DESC")
    @recipient = Recipient.page(params[:fuck_page]).per(18).order("id DESC")
    @pre = Pre.page(params[:pres_page]).per(3).order("id DESC")
    @about = About.last
    respond_to do |format|
      format.html
      format.js
    end
  end
end
