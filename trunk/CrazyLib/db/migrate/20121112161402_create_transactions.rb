class CreateTransactions < ActiveRecord::Migration
  def change
    create_table :transactions do |t|
      t.integer :book_id
      t.integer :user_id
      t.date :day_borrow
      t.string :day_return
      t.string :date
      t.integer :status

      t.timestamps
    end
  end
end
