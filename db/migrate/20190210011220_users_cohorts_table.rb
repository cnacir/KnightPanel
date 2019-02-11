class UsersCohortsTable < ActiveRecord::Migration[5.2]
  def change
		create_table :communities do |t|
			t.references :user
			t.references :cohort
		end
  end
end
