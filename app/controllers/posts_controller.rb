class PostsController < ApplicationController
before_filter :authenticate_user!,
	:only => [:new, :create, :edit, :update, :destroy]
	
def show
	@board = Board.find(params[:board_id])
	@post = @board.posts.find(params[:id])
end

def new
	@board = Board.find(params[:board_id])
	if @board.user == current_user
		@post = Post.new
	else
	flash[:alert] = "nope"
	end
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
		if @board.user == current_user
			@post.update(post_params)
		else
			flash[:alert] = "Don't go changing other people's stuff."
		end
	redirect_to board_post_path(@board, @post)
end

def destroy
	@board = Board.find(params[:board_id])
	@post = @board.posts.find(params[:id])
	if @board.user == current_user
		@post.destroy
	else
		flash[:alert] = "Don't destroy other people's stuff."
	end
	redirect_to board_path(@board)
end

private
def post_params
	params.require(:post).permit(:title, :image, :url, :board_id)
end
end