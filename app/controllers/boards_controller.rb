class BoardsController < ApplicationController

def index
	@boards = Board.all
end

def show
	@board = Board.find(params[:id])
end

def new
	@board = Board.new
end

def create
	# For your validations to work, you need to use the if @board.save syntax
	@board = current_user.boards.new(board_params)
	if @board.save
		redirect_to root_path
	else
		render :new
	end
	# Be more descriptive of the path it should redirect to here as you might decide later
	# to change the root path. ie  boards_path
	# Also, wouldn't you want it to go to the new board?:  board_path(@board)
end

def edit
	@board = Board.find(params[:id])
end

def update
	@board = Board.find(params[:id])
	if @board.user == current_user
		@board.update(board_params)
	else
		flash[:alert] = "Don't go changing other people's stuff."
	end
	redirect_to board_path(@board)
end

def destroy
	@board = Board.find(params[:id])
	if @board.user == current_user
		@board.destroy
	else
		flash[:alert] = "Don't destroy other people's stuff."
	end
	redirect_to boards_path
end

private

def board_params
	params.require(:board).permit(:title, :image)
end

end
