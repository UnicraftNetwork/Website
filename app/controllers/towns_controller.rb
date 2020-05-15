class TownsController < ApplicationController
  def index
    @towns = Town.order(:conquered).sort { |a, b| b[:bar] <=> a[:bar] }
  end
end
