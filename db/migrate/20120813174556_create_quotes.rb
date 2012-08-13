class CreateQuotes < ActiveRecord::Migration
  def change
    create_table :quotes do |t|
      t.string :quote
      t.string :source
      t.string :link
      t.date :date

      t.timestamps
    end
  end
end
