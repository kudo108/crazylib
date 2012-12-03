class Mailer < ActionMailer::Base
  default :from => "crazylib.hcmut@gmail.com"

  def demo(sender, to, subject, content)
    @content = content
    mail(
      :from => "\"#{sender}\"",
      :to => to,
      :subject => subject
    )
  end

  def welcome_email user_name, user_email
    @name = user_name
    mail(
      :from => '"CrazyLib Team"',
      :to => user_email,
      :subject => 'Welcome to crazylib'
    )
  end
end
