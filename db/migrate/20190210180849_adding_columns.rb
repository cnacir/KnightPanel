class AddingColumns < ActiveRecord::Migration[5.2]
  def change
		add_column :courses, :class_hours, :integer
		add_column :cohorts, :start_date, :date
		add_column :cohorts, :end_date, :date
		add_column :users, :age, :integer
		add_column :users, :salary, :integer
		add_column :users, :education, :string
  end
end
