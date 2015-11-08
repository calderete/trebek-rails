class Deck < ActiveRecord::Base
	belongs_to :user
	has_many :cards
	acts_as_votable
end
