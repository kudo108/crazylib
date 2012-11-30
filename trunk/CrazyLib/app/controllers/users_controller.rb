class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
  end
  def history
    logger.debug params
    @transactions = Transaction.find(:all, :conditions=>{:user_id=>params[:userid]})
  end
end