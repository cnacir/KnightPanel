class AddRolesToUsers < ActiveRecord::Migration[5.2]
  def change
		add_column :users, :full_name, :string
    add_column :users, :instructor, :boolean, default: false
    add_column :users, :student, :boolean, default: false
  end
end
