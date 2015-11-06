class CardsController < ApplicationController

	def index
		@deck = Deck.find(params[:id])
		@deck.cards.create(params[:id])
		render "cards.json.jbuilder"
	end

	def create


		@card = decks.cards.new(question: params[:question],
											  answer: params[:answer],
											  category: params[:category])
	
		if @card.save

			render "card_made.json.jbuilder", status: :created
		else
			render json: {error: "Could not create Card"}
		end
	end

	def destroy
		@card = Card.find_by(card_id: params[:card_id])
	end
end