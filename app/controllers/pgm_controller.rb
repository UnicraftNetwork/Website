class PgmController < ApplicationController
  def index
  end

  def stats
    params[:sort] ||= 'kills'
    @pgm_records = PgmRecord.order(params[:sort] + ' DESC').page(params[:page]).per(20)
    @count = (@pgm_records.current_page - 1) * @pgm_records.limit_value + 1
    @sorts = {
        kills: 'Kills',
        deaths: 'Deaths',
        kd: 'KD',
        kk: "KK",
        wools: "Wools",
        monuments: "Monuments",
        cores: "Cores"
    }
  end
end
