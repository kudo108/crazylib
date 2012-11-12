class CreateUsergroups < ActiveRecord::Migration
  def change
    create_table :usergroups do |t|
      t.string :group_name

      t.timestamps
    end
  end
end
