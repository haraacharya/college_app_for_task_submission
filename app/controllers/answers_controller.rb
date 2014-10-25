class AnswersController < ApplicationController

	def update
		a = Answer.find(params[:id])
		a.response_to_assignment = params[:answer][:response_to_assignment]
		a.save
		redirect_to assignment_path(a.assignment)
	end
	
end
