class Course < ApplicationRecord
	has_many :cohorts, dependent: :delete_all
	validates :name, uniqueness: true
	validates :name, presence: true
end
