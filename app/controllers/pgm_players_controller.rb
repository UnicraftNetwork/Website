class PgmPlayersController < ApplicationController
  def index
    params[:sort] ||= 'kills'
    @players = PgmPlayer.order(params[:sort] + ' DESC').page(params[:page]).per(20)
    @count = (@players.current_page - 1) * @players.limit_value + 1
    @sorts = {
      kills: 'Kills',
      deaths: 'Deaths'
    }
  end
end
