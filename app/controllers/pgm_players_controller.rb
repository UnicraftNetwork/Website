class PgmPlayersController < ApplicationController
  def index
    @players = PgmPlayer.order('kills DESC').page(params[:page]).per(20)
  end
end
