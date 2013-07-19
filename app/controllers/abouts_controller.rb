class AboutsController < ApplicationController
  def index
    @about = About.last
  end

  def new
    if current_user.admin == true
      @about = About.new
    end   
  end

  def create
    @about = About.create(params[:about])
  end

  def edit
    if current_user.admin == true
      @about = About.last
    end 
  end

  def update
    @about = About.last
    @about.update_attributes(params[:pre])
    redirect_to admin_abouts_path
  end
end
