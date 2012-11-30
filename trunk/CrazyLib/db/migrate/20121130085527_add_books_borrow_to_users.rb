class AddBooksBorrowToUsers < ActiveRecord::Migration
  def change
    add_column :users, :books_borrow, :integer

  end
end
