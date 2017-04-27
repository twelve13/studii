class CreateListings < ActiveRecord::Migration[5.0]
  def change
    create_table :listings do |t|
    	t.references :board, index: true, foreign_key: true, null: false
    	t.references :post, index: true, foreign_key: true, null: false
    end
  end
end
