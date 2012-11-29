class AddDetailsToBooks < ActiveRecord::Migration
  def change
    add_column :books, :quantity, :integer
    add_column :books, :image_url, :string
    add_column :books, :location, :string

  end
end
