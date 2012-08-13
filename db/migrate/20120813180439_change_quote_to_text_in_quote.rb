class ChangeQuoteToTextInQuote < ActiveRecord::Migration
  def up
  	change_table :quotes do |t|
		t.remove :quote
  		t.text :quote
  	end
  end

  def down
  	change_table :quotes do |t|
  		t.remove :quote
	  	t.string :quote
  	end	
  end
end
