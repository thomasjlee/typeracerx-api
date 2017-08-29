class HighScoresController < ApplicationController
  def index
    render json: HighScore.all.order('wpm * accuracy').reverse
  end

  def create
    @high_score = HighScore.new(high_score_params)

    if @high_score.save
      render json: {message: "Created"}, status: 201
    else
      render json: {errors: @high_score.errors}, status: 422
    end
  end

  private

  def high_score_params
    params.require(:high_score).permit(:wpm, :accuracy, :name)
  end
end
