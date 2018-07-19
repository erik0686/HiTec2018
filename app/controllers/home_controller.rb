class HomeController < ApplicationController

  def index; end

  def leaderboard
    @colors = Color.all
    @colors.each do |color|
      color.update_points
    end
    @buildings = Building.all
  end

end
