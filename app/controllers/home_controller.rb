class HomeController < ApplicationController
  def index
    @boards = Board.latest_ten
  end
end
