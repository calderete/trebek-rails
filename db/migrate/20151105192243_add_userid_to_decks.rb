class AddUseridToDecks < ActiveRecord::Migration
  def change
  	add_column :decks, :user_id, :integer
  	remove_column :decks, :categorie, :string
  end
end
