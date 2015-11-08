class VotesController < ApplicationController

	def initialize
		@user = current_user
		@deck = Deck.find(params[:deck_id])
	end

	def up_vote
		@deck.liked_by @user
		index
	end

	def down_vote
		@deck.disliked_by @user
		index
	end

	def index
		@votes = Vote.all
		render "votes.json.jbuilder"
	end
end
		

		