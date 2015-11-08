class GuessesController < ApplicationController

	def index
		@card = Card.find(params[:id])
		@guesses = @card.guesses.all
	end

	def create
		@card = Card.find(params[:id])
		@guess = @card.guesses.new(time: params[:time],
								   score: params[:score])

		if @guess.save

			render "guess_made.json.jbuilder", status: :created
		else 
			render json: {error: "Could not create Guess"}
	end
end
end