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
	if @board.user == current_user
		@note.update(note_params)
	else
		flash[:alert] = "Only the owner of this board can edit notes."
	end
	redirect_to board_post_path(@board, @post)
end

def destroy
	@board = Board.find(params[:board_id])
	@post = @board.posts.find(params[:post_id])
	@note = @post.notes.find(params[:id])
	if @board.user == current_user
		@note.destroy
	else
		flash[:alert] = "Only the owner of this board can delete notes."
	end
	redirect_to board_post_path(@board, @post)
end

private
def post_params
	params.require(:post).permit(:title, :image, :url, :board_id)
end

def note_params
	params.require(:note).permit(:body, :board_id, :post_id)
end

end