class ClubsController < ApplicationController
  def index
  end

  def new
    @club = Club.new
  end

  def create
    @club = Club.new(params[:club])
    if @club.save
      flash[:notice] = "Club has been added."
      redirect_to @club
    else
      #rien
    end
  end

  def show
    @club = Club.find(params[:id])
  end

end
