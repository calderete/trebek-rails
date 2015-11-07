class CardsController < ApplicationController

	def index
		@deck = Deck.find(params[:id])
		@cards = @deck.cards.all
		
		render "cards.json.jbuilder"
	end

	def create


		@deck = Deck.find(params[:id])
		@card = @deck.cards.new(question: params[:question],
											  answer: params[:answer],
											  category: params[:category])
	
		if @card.save

			render "card_made.json.jbuilder", status: :created
		else
			render json: {error: "Could not create Card"}
		end
	end

	def edit
		@card = Card.find(params[:id])
		render json: { @card.content}
	end



	def destroy
		@card = Card.find_by(card_id: params[:card_id])
	end
end






