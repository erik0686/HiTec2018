class StudentActivitiesController < ApplicationController

  def new
    @student_activity = StudentActivity.new
  end

  def create
    @student_activity = StudentActivity.new(student_activity_params)
    params[:id].size == 7 ? points_for_staff(params[:id]) : points_for_student(params[:id])
  end

  private

  def points_for_staff(matricula)
    staff = Staff.find_by(matricula: matricula)
    building = Building.find(staff.building.id)
    building.points += 1
    building.save
    redirect_to staff_puntos_path
  end

  def points_for_student(param_id)
    id = param_id[9..param_id.size]
    student = Student.find(id)
    @student_activity.student_id = student.id
    if @student_activity.save
      Drive.new(ENV["STUDENTS_SPREADSHEET"]).write_student_activity(student.id, Activity.find(@student_activity.activity_id).name)
      building = Building.find(@student_activity.student.building.id)
      building.points += 1
      building.save
      redirect_to staff_puntos_path
    else
      redirect_to staff_puntos_path
    end
  end

  def student_activity_params
    params.require(:student_activity).permit(:student_id, :activity_id)
  end
end
