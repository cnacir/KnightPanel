class AddColumnsToCohorts < ActiveRecord::Migration[5.2]
  def change
		add_column :cohorts, :name, :string
		add_column :courses, :name, :string
  end
end
