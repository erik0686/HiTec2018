class ActivitiesController < ApplicationController

  def agregar
    act = Activity.new(name: params[:name])
    act.save
  end

  def borrar
    activity = Activity.find(params[:activity_id])
    activity.destroy
  end

end
