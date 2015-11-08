class VotesController < ApplicationController

	

	def up_vote
		@user = current_user
		@deck = Deck.find(params[:deck_id])
		@deck.liked_by @user
		index
	end

	def down_vote
		@user = current_user
		@deck = Deck.find(params[:deck_id])
		@deck.disliked_by @user
		index
	end

	def index
		@votes = Vote.all
		render "votes.json.jbuilder"
	end
end
		

		