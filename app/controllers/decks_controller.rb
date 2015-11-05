class DecksController < ApplicationController

	def index
	end

	def create
		@deck = Deck.new(title: params[:title],
						categorie: params[:category])
	end