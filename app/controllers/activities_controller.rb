class ActivitiesController < ApplicationController

  def agregar
    act = Activity.new(name: params[:name])
    act.save
    Drive.new(ENV["STUDENTS_SPREADSHEET"]).create_activity(params[:name])
  end

  def borrar
    activity = Activity.find(params[:activity_id])
    activity.destroy
    Drive.new(ENV["STUDENTS_SPREADSHEET"]).delete_activity(activity.name)
  end

end
