module DeviseHelper
  # A simple way to show error messages for the current devise resource. If you need
  # to customize this method, you can either overwrite it in your application helpers or
  # copy the views to your application.
  #
  # This method is intended to stay simple and it is unlikely that we are going to change
  # it to add more behavior or options.
  def devise_error_messages!
    return "" if resource.errors.empty?
    messages = resource.errors.full_messages.map { 
		|msg|
  		msg = msg.gsub("Password", I18n.t(:password)) if msg.include? "Password"
  		msg = msg.gsub("Student ID", I18n.t(:student_id)) if msg.include? "Student ID"
  		msg = msg.gsub("Class name", I18n.t(:class)) if msg.include? "Class name"
  		msg = msg.gsub("Home address", I18n.t(:address)) if msg.include? "Home address"
  		msg = msg.gsub("Phone number", I18n.t(:phone)) if msg.include? "Phone number"
  		content_tag(:li, msg)
	}.join
	
    sentence = I18n.t("errors.messages.not_saved",
                      :count => resource.errors.count,
                      :resource => resource.class.model_name.human.downcase)

    html = <<-HTML
    <div id="error_explanation">
      <h2>#{sentence}</h2>
      <ul>#{messages}</ul>
    </div>
    HTML

    html.html_safe
  end
end
