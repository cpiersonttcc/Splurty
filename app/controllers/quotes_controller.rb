class QuotesController < ApplicationController
	def index
		@quote = Quote.order("RANDOM()").first
	end

	def create
		@quote = Quote.create(quote_params)
		if @quote.invalid?
			flash[:error] = '<strong>Could not save</strong> the data you entered is invalid.'
		end
		redirect_to root_path
	end

	def about

	end

	def initials
		@quote.author.gsub(/\s*(\S)\S*/, '\1').upcase
	end

	def show
		@quote = Quote.find(params[:id])
	end

	private

	def quote_params
		params.required(:quote).permit(:saying, :author)
	end

end
