class SurveysController < ApplicationController
  #root ROUTE directs here...
  def index
  	# session[:count] to show many times form was submitted
    if !session[:count]
      session[:count] = 0
    end
    # renders index.html.erb
  end 

  # action when form is submitted
  def create
  	session[:count] += 1
  	# params[:survey] grabs all answers that have index 'survey'
  	# if it has different index, won't grab
  	session[:user_input] = params[:survey]
  	# flashes this message on the next page
  	flash[:success] = "Thank you for submitting form.  You have submitted this form #{session[:count]} times."
  	redirect_to "/surveys/result"
  end

  # directed here after form is processed
  def result
  	# @result format, so you can use in html.erb
  	@result = session[:user_input]
  end

end
