class MovieRoomsController < ApplicationController
  before_action :authenticate_user!
  def index
    @movie_rooms = MovieRoom.all
  end

  def new
    @movie_room = MovieRoom.new
  end

  def edit
    @movie_room = MovieRoom.new
  end

  def show
    @movie_room = MovieRoom.find(params[:id])
  end
end
