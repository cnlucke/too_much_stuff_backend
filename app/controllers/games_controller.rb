class GamesController < ApplicationController
  before_action :find_game, only: [:update, :destroy]

  # GET /games
  # GET /games.json
  def index
    @games = Game.order(:time)[0..4]
    render json: @games, each_serializer: GamesSerializer
  end

  # POST /games
  # POST /games.json
  def create
    @game = Game.new(game_params)

    if @game.save
      render json: @game, serializer: GamesSerializer
    else
      render json: @game.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /games/1
  # PATCH/PUT /games/1.json
  def update
    respond_to do |format|
      if @game.update(game_params)
        render json: @game
      else
        render json: @game.errors, status: :unprocessable_entity
      end
    end
  end

  # DELETE /games/1
  # DELETE /games/1.json
  def destroy
    @game.destroy
    render json: @game.errors, status: :unprocessable_entity
  end

  private
    def find_game
      @game = Game.find(params[:id])
    end

    def game_params
      params.require(:game).permit(:username, :time)
    end
end
