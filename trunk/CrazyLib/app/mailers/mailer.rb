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
end
