class LocaleController < Devise::RegistrationsController
  # protect_from_forgery
  before_filter :set_locale

  def set_locale
    I18n.locale = current_user.locale if current_user
  end
  
  def set
    locale = params[:id]
    raise 'unsupported locale' unless ['fr', 'en', 'vi'].include?(locale)
    current_user.locale = locale
    current_user.save
    redirect_to :back
  end
end
