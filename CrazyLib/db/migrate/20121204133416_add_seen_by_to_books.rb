class AddSeenByToBooks < ActiveRecord::Migration
  def change
    add_column :books, :seen_by, :integer,:default=>0
  end
end
