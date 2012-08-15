class QuoteApiController < ApplicationController
  
  def random
  	# Optimize this for 
  	quote = Quote.find(rand(Quote.count) + 1)
  	
  	render json: quote
  end
  
end
