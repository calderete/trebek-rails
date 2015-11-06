json.array! @cards do |card|
	json.extract! card, :question, :answer, :id
	end