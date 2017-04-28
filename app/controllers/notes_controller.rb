class NotesController < ApplicationController

def new
	@board = Board.find(params[:board_id])
	@post = @board.posts.find(params[:post_id])
	@note = Note.new
end

def create
	@board = Board.find(params[:board_id])
	@post = @board.posts.find(params[:post_id])
	@note = @post.notes.create(note_params)
	redirect_to board_post_path(@board, @post)
end

def edit
	@board = Board.find(params[:board_id])
	@post = @board.posts.find(params[:post_id])
	@note = @post.notes.find(params[:id])
end

def update
	@board = Board.find(params[:board_id])
	@post = @board.posts.find(params[:post_id])
	@note = @post.notes.find(params[:id])
	@note.update(note_params)
	redirect_to board_post_path(@board, @post)
end

def destroy
	@board = Board.find(params[:board_id])
	@post = @board.posts.find(params[:id])
	@post.destroy
	redirect_to board_path(@board)
end

private
def post_params
	params.require(:post).permit(:title, :image, :url, :board_id)
end

def note_params
	params.require(:note).permit(:body, :board_id, :post_id)
end

end