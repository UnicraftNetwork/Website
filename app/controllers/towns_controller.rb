class TownsController < ApplicationController
  def index
    @towns = Town.all
  end
end
