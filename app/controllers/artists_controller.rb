class ArtistsController < ApplicationController
  def new
  end

  def create
  end

  def edit
    @artist = Artist.find_by(id: params[:id])
  end

  def update
  end

  def index
    @artists = Artist.all
  end

  def show
    @artist = Artist.find_by(id: params[:id])
  end
end
