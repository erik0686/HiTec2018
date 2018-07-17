class TeamsController < ApplicationController
  before_action :authenticate_user!, only: [:asistencia]
  def resources

  end

  def asistencia
    
  end

  def puntos

  end
end
