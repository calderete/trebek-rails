class Guesses < ActiveRecord::Migration
  def change
  	create_table :guesses do |t|
  		t.integer :time
  		t.integer :score
  		t.integer :user_id
  		t.integer :card_id
  	end

  end
end
