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
    @board = Board.new(permitted_params)
    if @board.save
      redirect_to board_path(@board)
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def permitted_params
    params.require(:board).permit(:width, :height, :mine_count, :email, :name)
  end
end
