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
  
  def feed_back_email name, email, message
    @name = name
    @email = email
    @message = message
    mail(
      :from => "\"#{@name}\"",
      :to => "ahn.willta@yahoo.com",
      :subject => "New feedback from crazylib"
    )
  end
end
