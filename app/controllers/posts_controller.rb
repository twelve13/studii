class PostsController < ApplicationController

def show
	@board = Board.find(params[:board_id])
	@post = @board.posts.find(params[:id])
end

def new
	@board = Board.find(params[:board_id])
	@post = Post.new
end

def create
	@board = Board.find(params[:board_id])
	@post = @board.posts.create(post_params)
	redirect_to board_post_path(@board, @post)
end

def edit
	@board = Board.find(params[:board_id])
	@post = Post.find(params[:id])
end

def update
	@board = Board.find(params[:board_id])
	@post = @board.posts.find(params[:id])
	@post.update(post_params)
	redirect_to board_path(@board)
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
end