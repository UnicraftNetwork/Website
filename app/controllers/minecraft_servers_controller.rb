class MinecraftServersController < ApplicationController
  def index
    @servers = MinecraftServer.all
  end
end
