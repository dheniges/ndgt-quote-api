class QuoteApiController < ApplicationController
  
  def random
  	# Optimize this
  	quote = Quote.find(rand(Quote.count) + 1)
  	
  	# Allow cross domain requests
  	response.headers['Access-Control-Allow-Origin'] = '*'
  	
  	render :json => quote, :callback => params[:callback]
  end
  
end
