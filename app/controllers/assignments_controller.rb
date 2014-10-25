class AssignmentsController < ApplicationController
  
  def show
  	@assignment = Assignment.find(params[:id])
  	@answer = @assignment.answers.where(user:current_user).first_or_initialize
  	@answer.save
  end

end
