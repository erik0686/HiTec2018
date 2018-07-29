class HomeController < ApplicationController

  def index; end

  def leaderboard
    @colors = Color.all
    @buildings = Building.all
  end

end
