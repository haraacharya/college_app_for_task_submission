class Lecture < ActiveRecord::Base

	has_many :enrollments
	has_many :assignments

	has_many :users, through: :enrollments

	accepts_nested_attributes_for :assignments
	#accepts_nested_attributes_for :users
	accepts_nested_attributes_for :enrollments
end