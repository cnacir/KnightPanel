class AddCoursesToCohorts < ActiveRecord::Migration[5.2]
  def change
    add_reference :cohorts, :courses, foreign_key: true
  end
end
