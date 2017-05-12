class CreateBoards < ActiveRecord::Migration[5.0]
  def change
    create_table :boards do |t|
    	t.string :title
    	t.string :image
      # maybe use image_url, img_url, or photo_url here instead (more descriptive)
    end
  end
end
