class Admin::RecipientsController < ApplicationController
  before_filter :admin
  def index
    @recipient = Recipient.page(params[:page]).per(15).order("id DESC")
  end

  def new
    @recipient = Recipient.new
  end

  def create
    @recipient = Recipient.create(params[:recipient])
  end

  def destroy
    @recipient = Recipient.find(params[:id])
    @recipient.destroy
  end

  def edit
    @recipient = Recipient.find(params[:id])
  end

  def update
    @recipient = Recipient.find(params[:id])
    @recipient.update_attributes(params[:recipient])
    redirect_to root_path
  end

  def admin
    if signed_in? == false
      redirect_to root_path
    end  
  end
end
