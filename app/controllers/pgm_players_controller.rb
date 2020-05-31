class PgmPlayersController < ApplicationController
  def index
    @players = PgmPlayer.order('kills DESC').page(params[:page]).per(20)
    @count = (@players.current_page - 1) * @players.limit_value + 1
  end
end
