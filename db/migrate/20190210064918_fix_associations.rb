class FixAssociations < ActiveRecord::Migration[5.2]
  def change
		remove_column :cohorts, :courses_id
		remove_column :usercohorts, :cohorts_id
		add_reference :cohorts, :course, foreign_key: true
		add_reference :usercohorts, :cohort, foreign_key: true
  end
end
