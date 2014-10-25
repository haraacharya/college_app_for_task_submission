class LecturesController < ApplicationController
  
  before_action :authenticate_user!

  def index
  	@lectures = current_user.lectures
  end

  def show
  	@lecture = Lecture.find(params[:id])
  	@assignments = @lecture.assignments
  end
end
