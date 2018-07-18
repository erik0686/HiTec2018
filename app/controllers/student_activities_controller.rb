class StudentActivitiesController < ApplicationController

  def new
    @student_activity = StudentActivity.new
  end

  def create
    @student_activity = StudentActivity.new(student_activity_params)
    student = Student.find(params[:id])
    @student_activity.student_id = student.id
    if @student_activity.save
      Drive.new(ENV["STUDENTS_SPREADSHEET"]).write_student_assistance(student.id, @student_activity.activity_id)
      redirect_to staffs_puntos_path
    else
      redirect_to staffs_puntos_path
    end
  end

  private

  def student_activity_params
    params.require(:student_activity).permit(:student_id, :activity_id)
  end
end
