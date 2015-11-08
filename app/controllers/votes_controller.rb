class VotesController < ApplicationController

	def up_vote
		@user = current_user
		@deck = Deck.find(params[:id])
		@vote = @deck.liked_by @user
		binding.pry
	end
end