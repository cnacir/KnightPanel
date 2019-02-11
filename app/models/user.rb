class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

	has_many :usercohorts
	has_many :cohorts, through: :usercohorts

	validates :age, numericality: {less_than: 150, message: "The system can't handle one that ancient. Be younger."}
	validates :salary, numericality: { greater_than: 0, message: "Come on now, surely you must make more than that."}


	def name
    full_name
  end
end
