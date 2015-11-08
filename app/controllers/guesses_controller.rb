class GuessesController < ApplicationController

	def index
		@card = Card.find(params[:id])
		@guesses = @card.guesses.all
		render "guess.json.jbuilder"
	end

	def create
		@card = Card.find(params[:id])
		@guess = current_user.guesses.new(time: params[:time],
								  		  score: params[:score],
								  		  card_id: params[:id])

		if @guess.save

			render "guess_made.json.jbuilder", status: :created
		else 
			render json: {error: "Could not create Guess"}
	end
end
end