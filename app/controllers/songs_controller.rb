class SongsController < ApplicationController
  def new
    @song = Song.new
  end

  def create
    @song = Song.new
    @song.name = params[:song][:name]
    @song.artist_id = params[:song][:artist_id]
    @song.genre_id = params[:song][:genre_id]
    @song.save
    redirect_to song_path(@song)
  end

  def edit
    @song = Song.find_by(id: params[:id])
  end

  def update
    @song = Song.find(params[:id])
    @song.update(name: params[:song][:name])
    redirect_to song_path(@song)
  end

  def index
    @songs = Song.all
  end

  def show
    @song = Song.find_by(id: params[:id])
    @artist = Artist.find_by(id: @song.artist_id)
    @genre = Genre.find_by(id: @song.genre_id)
  end
end
