class TownsController < ApplicationController
  def index
    @towns = Town.order(:residents).sort { |a, b| b[:residents] <=> a[:residents] }
  end
end
