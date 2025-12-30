class RentalsController < ApplicationController
  before_action :set_game, only: [:new, :create]

  def index
    @rentals = Rental.includes(:user, :game).all
  end
  def new
    @rental = Rental.new
    @rental.game_id = params[:game_id] if params[:game_id]
  end

  def create
    @rental = Rental.new(rental_params)
    @rental.game = @game

    if @rental.save
      redirect_to game_path(@game), notice: "Gra wypożyczona"
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def set_game
    @game = Game.find(params[:game_id])
  end

  def rental_params
    params.require(:rental).permit(:user_id, :rented_on, :returned_on)
  end
end
