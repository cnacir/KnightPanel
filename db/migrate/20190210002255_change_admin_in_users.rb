class ChangeAdminInUsers < ActiveRecord::Migration[5.2]
  def change
		remove_column :users, :admin
		add_column :users, :admin, :boolean, default: true
  end
end
