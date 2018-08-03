class StudentActivitiesController < ApplicationController
  before_action :authenticate_user!, only: [:new]
  skip_before_action :verify_authenticity_token


  def new
    @student_activity = StudentActivity.new
  end

  def create
    @student_activity = StudentActivity.new(student_activity_params)
    params[:id].size == 7 ? points_for_staff(params[:id], params[:student_activity][:activity_id]) : points_for_student(params[:id])
  end

  private

  def points_for_staff(matricula, activity_id)
    staff = Staff.find_by(matricula: matricula)
    building = Building.find(staff.building.id)
    color = building.color
    if Activity.find(activity_id).name != "David Garza"
      building.points += 5
      color.points += 5
      # Drive.new(ENV["STAFF_SPREADSHEET"]).write_points_for_staff_rally(matricula, Activity.find(activity_id).name, "5")
    else
      building.points += 1
      color.points += 1
      staff.activity_counter += 1
      staff.save
      # Drive.new(ENV["STAFF_SPREADSHEET"]).write_points_for_staff_rally(matricula, Activity.find(activity_id).name, "1")
    end

    building.save
    color.save

    redirect_to staff_puntos_path
  end

  def points_for_student(param_id)
    id = param_id[9..param_id.size]
    student = Student.find(id)
    @student_activity.student_id = student.id
    if @student_activity.save
      # Drive.new(ENV["STUDENTS_SPREADSHEET"]).write_student_activity(student.id, Activity.find(@student_activity.activity_id).name)
      building = Building.find(@student_activity.student.building.id)
      color = building.color
      building.points += 1
      building.save
      color.points += 1
      color.save
      redirect_to staff_puntos_path
    else
      redirect_to staff_puntos_path
    end
  end

  def student_activity_params
    params.require(:student_activity).permit(:student_id, :activity_id)
  end
end
