class MovieRoomsController < ApplicationController
  before_action :authenticate_user!
  def index
    @movie_rooms = MovieRoom.all
  end

  def create
    @movie_room = current_user.movie_rooms.build(movie_room_params)

    if @movie_room.save
      redirect_to movie_rooms_path, notice: "Movie room created!"
    else
      render :new, status: :unprocessable_entity
    end
  end
  def movie_room_params
    params.require(:movie_room).permit(:title, :genre, :description, :movie_title, :movie_year, :moviee_poster_url)
  end
  def search
  end
  def new
    @movie_room = MovieRoom.new
    if params[:query].present?
      puts "Searching for movie: #{params[:query]}"
      omdb_service = OmdbService.new
      @movie_data = omdb_service.search_movie(params[:query])
      puts "Movie data: #{@movie_data.inspect}"
    end
  end

  def edit
  end

  def show
    @movie_room = MovieRoom.find(params[:id])
  end
end
