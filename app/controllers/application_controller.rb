class ApplicationController < ActionController::Base
  before_filter :set_locale
  protect_from_forgery
  def after_sign_in_path_for(resource_or_scope)    
    admin_donors_path  
  end


  def set_locale
    # 可以將 ["en", "zh-TW"] 設定為 VALID_LANG 放到 config/environment.rb 中
    if params[:locale] && I18n.available_locales.include?( params[:locale].to_sym )
      session[:locale] = params[:locale]
    end

    I18n.locale = session[:locale] || I18n.default_locale
  end
end
