class CoursesController < ApplicationController
  def index
  	@search_term = params[:looking_for] || "jhu"
  	@searches = Coursera.fetch(@search_term) 
  	logger.debug(" Courses searched #{@searches}")
  end
end
