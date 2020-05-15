class TownsController < ApplicationController
  def index
    @towns = Town.order(:name).page(params[:page])
  end
end
