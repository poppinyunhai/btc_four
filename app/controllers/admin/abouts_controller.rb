class Admin::AboutsController < ApplicationController
  before_filter :admin
  def index
    @about = About.last
  end

  def new
    @about =About.new
  end

  def create
    @about = About.create(params[:about])
  end

  def edit
    @about = About.last
  end

  def update
    @about = About.last
    @about.update_attributes(params[:about])

    redirect_to admin_abouts_path
  end

  protected

  def admin
    if signed_in? == false
      redirect_to root_path
    end  
  end
end
