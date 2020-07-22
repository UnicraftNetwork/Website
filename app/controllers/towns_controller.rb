class TownsController < ApplicationController
  def index
    @towns = Kaminari.paginate_array(
      Town.all.sort_by { |town| town.residents.split('#').size }.reverse!
    ).page(params[:page]).per(12)
  end
end
