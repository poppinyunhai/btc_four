class RecipientsController < ApplicationController
  def index
    @recipient = Recipient.page(params[:page]).per(5).order("id DESC")
  end

  def new
    @recipient = Recipient.new
  end

  def create
    @recipient = Recipient.create(params[:recipient])
    redirect_to admin_recipients_path
  end

  def edit
    @recipient = Recipient.find(params[:id])
  end

  def update
    @recipient = Recipient.find(params[:id])
    @recipient.update_attributes(params[:recipient])
    redirect_to root_path
  end

  def destroy
    @recipient = Recipient.find(params[:id])
    @recipient.destroy
    redirect_to admin_recipients_path
  end
    
end
