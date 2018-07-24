class TeamsController < ApplicationController
  skip_before_action :verify_authenticity_token, :only => [:puntos, :resources, :asignar_puntos]
  before_action :authenticate_user!, only: [:puntos, :resources, :asignar_puntos]
  def resources; end

  def puntos; end

  def asignar_puntos
    if params[:Color] != ""
      color = Color.find(params[:Color].to_i)
      color.points += params[:CantidadPuntos].to_i
      color.save
    elsif params[:Edificio] != ""
      building = Building.find(params[:Edificio].to_i)
      building.points += params[:CantidadPuntos].to_i
      building.save
    end
    redirect_to teams_puntos_path
  end
end
