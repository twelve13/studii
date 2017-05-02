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
	@board = current_user.boards.create(board_params)
	redirect_to root_path
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
