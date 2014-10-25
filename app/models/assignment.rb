class Assignment < ActiveRecord::Base

	belongs_to :lecture
	has_many :users, through: :answers

	has_many :answers


end