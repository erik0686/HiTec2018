class HomeController < ApplicationController

  def index; end

  def leaderboard
    @colors = Color.all
    @buildings = Building.all
  end

  def stats
    @careers = get_careers
    @vegano = Student.where(vegan: "Si")
    @no_vegano = Student.where(vegan: "No")
  end

  def puntos
    @buildings = Building.by_points
    @colors = Color.by_points
  end

  private

  def get_careers
    Student.pluck(:career).uniq
  end

end
