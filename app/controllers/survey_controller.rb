class SurveyController < ApplicationController
  def index
  	
  end

  def create
  
  end

  def result
  	# session[:name] = params[:names]
  	# session[:location] = params[:location]
  	# session[:language] = params[:language]
  	# session[:comment] = params[:comment]

  	if(session[:counter])
  		session[:counter] += 1
  	else
  		session[:counter] = 1
  	end
  	@counter = session[:counter]

  	@name = params[:names]
  	@location= params[:location]
  	@language= params[:language]
  	@comment = params[:comment]

  	render 'result'
  end
end
