class ReviewsController < ApplicationController

  before_action :set_game, only: [:new, :create]


  def index
    @reviews = Review.includes(:user, :game).all
  end


  def new
    @review = Review.new
    @review.game = @game if @game
  end


  def create
    @review = Review.new(review_params)
    @review.game = @game if @game
    if @review.save
      redirect_to reviews_path, notice: "Recenzja dodana!"
    else
      render :new
    end
  end

  private

  def set_game
    @game = Game.find(params[:game_id]) if params[:game_id]
  end

  def review_params
    params.require(:review).permit(:user_id, :game_id, :comment, :rating)
  end
end
