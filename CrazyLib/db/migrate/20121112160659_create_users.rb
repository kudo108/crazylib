class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :nickname
      t.string :hashed_password
      t.string :email
      t.date :register_date
      t.date :end_date
      t.integer :group

      t.timestamps
    end
  end
end
