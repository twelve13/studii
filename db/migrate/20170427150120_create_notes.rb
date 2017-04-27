class CreateNotes < ActiveRecord::Migration[5.0]
  def change
    create_table :notes do |t|
    	t.string :body
    	t.timestamps
    	t.references :post, index: true, foreign_key: true, null: false
    end
  end
end
