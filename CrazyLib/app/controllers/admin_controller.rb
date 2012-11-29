class AdminController < ApplicationController
  def show_transactions
    @transactions = Transaction.all
  end
end
