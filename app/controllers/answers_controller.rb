class AnswerController < ApplicationController

	def update
		a = Answer.find(params[:id])
		a.response = params[:answer][:response_to_assignment]
		a.save
		resirect_to assignment_path(a.assignment)
	end
	
end
