class AddCurrentQuantityToBooks < ActiveRecord::Migration
  def change
    add_column :books, :current_quantity, :integer
  end
end
