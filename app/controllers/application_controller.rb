class ApplicationController < ActionController::Base
  protect_from_forgery

  #before_action :authenticate_user!
  before_filter :set_user_language  
  
  private  
  def set_user_language  
    I18n.locale = 'es'
  end
end
