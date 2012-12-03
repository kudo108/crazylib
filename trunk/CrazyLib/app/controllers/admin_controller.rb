class AdminController < ApplicationController
  layout 'admin'
  def show_transactions
    @transactions = Transaction.all
  end

  def show_users
    @users = User.all
  end

  def show_books
    @books = Book.all
  end
  
  def show_moderates
    @users = User.find(:all,:conditions=>{:group=>3})
  end
  
  def send_email
    Mailer.demo("crazy team", "put_your_email_here@domain.com", "Demo subject", "Ya! It works!").deliver
  end
end
