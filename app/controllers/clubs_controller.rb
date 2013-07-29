class ClubsController < ApplicationController
  def index
    @clubs = Club.all
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

  def edit
    @club = Club.find(params[:id])
  end

  def update
    @club = Club.find(params[:id])
    @club.update_attributes(params[:club])
    flash[:notice] = "Club has been updated."
    redirect_to @club
  end

end
