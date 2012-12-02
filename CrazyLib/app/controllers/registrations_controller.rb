class RegistrationsController < Devise::RegistrationsController
  before_filter :set_locale
 
  def set_locale
    I18n.locale = params[:locale] || I18n.default_locale
  end
  
  def devise_mapping
     request.env["devise.mapping"] = Devise.mappings[:user]
  end
end