json.array! @guesses do |guess|
	json.extract! guess, :id, :user_id, :score, :time
	end