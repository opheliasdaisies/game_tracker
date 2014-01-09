class GenresController < ApplicationController

  def index
    @genres = Genre.all
  end

  def new
    @genre = Genre.new
  end

  def create
    @genre = Genre.new(params[:genre])
    if @genre.save
      redirect_to @genre
    else
      render new
    end
  end

  def show
    @genre = Genre.find(params[:id])
  end

end