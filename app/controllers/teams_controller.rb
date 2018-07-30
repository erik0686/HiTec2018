class TeamsController < ApplicationController
  skip_before_action :verify_authenticity_token, :only => [:puntos, :resources, :asignar_puntos]
  before_action :authenticate_user!, only: [:puntos, :resources, :asignar_puntos]
  def resources; end

  def puntos; end

  def duplicar_puntos_staff
    staffs = Staff.where(role: "Capitán/a de edificio")
    staffs.each do |staff|
      if staff.activity_counter == 20
        staff.building.points += 20
        staff.building.color.points += 20

        staff.building.save
        staff.building.color.save
      end
    end
  end

  def duplicar_puntos_student
    activity = Activity.find_by(name: params[:activity])
    student_activities = StudentActivity.where(activity_id: activity.id)
    cantidades = Hash.new(0)
    student_activities.each do |asistencia|
      cantidades[asistencia.student.building.id] +=1
    end

    Building.all.each do |building|
      if building.students.count == cantidades[building.id]
        color = building.color
        building.points += building.students.count
        color.points += building.students.count

        building.save
        color.save
      end
    end


  end

  def asignar_puntos
    if params[:Color] != ""
      color = Color.find(params[:Color].to_i)
      color.points += params[:CantidadPuntos].to_i
      color.save
    elsif params[:Edificio] != ""
      building = Building.find(params[:Edificio].to_i)
      color = building.color
      color.points += params[:CantidadPuntos].to_i
      color.save
      building.points += params[:CantidadPuntos].to_i
      building.save
    end
    redirect_to teams_puntos_path
  end
end
