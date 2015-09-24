class QuotesController < ApplicationController
	def index
		@quote = Quote.order("Random()").first
	end

	def new
	end
end
