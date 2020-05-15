class TownsController < ApplicationController
  def index
    @towns = Town.all.sort_by { |town| town.residents.split('#').size }.reverse!
  end
end
