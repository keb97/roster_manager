class PlayersController < ApplicationController
  before_filter :find_club
  before_filter :find_player, :only => [:show, :edit, :update, :destroy]

  def new
    @player = @club.players.build
  end

  def create
    @player = @club.players.build(params[:player])
    if @player.save
      flash[:notice] = "Player has been added."
      redirect_to [@club, @player]
    else
      #rien
    end
  end

  def show
  end

  def edit
  end

  def update
    if @player.update_attributes(params[:player])
      flash[:notice] = "Player has been updated."
      redirect_to [@club, @player]
    else
      #rien
    end
  end

  private
    def find_club
      @club = Club.find(params[:club_id])
    end
    def find_player
      @player = @club.players.find(params[:id])
    end
end
