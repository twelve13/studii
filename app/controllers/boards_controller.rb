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
	@board = Board.create(board_params)
	redirect_to root_path
end

def edit
	@board = Board.find(params[:id])
end

def update
	@board = Board.find(params[:id])
	@board.update(board_params)
	redirect_to board_path(@board)
end

def destroy
	@board = Board.find(params[:id])
	@board.destroy
	redirect_to boards_path
end

private

def board_params
	params.require(:board).permit(:title, :image)
end

end
