class GenresController < ApplicationController
  def new
  end

  def create
  end

  def edit
  end

  def update
  end

  def index
    @genres = Genre.all
  end

  def show
    @genre = Genre.find_by(id: params[:id])
  end
end
