class Cohort < ApplicationRecord
	belongs_to :course
	has_many :usercohorts
	has_many :users, through: :usercohorts
	validates :name, :users, presence: true
	validates :name, uniqueness: true
end
