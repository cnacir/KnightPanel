class FixJoinTable < ActiveRecord::Migration[5.2]
  def change
		drop_table :communities
		create_table :usercohorts do |t|
			t.references :user
			t.references :cohorts
		end
  end
end
