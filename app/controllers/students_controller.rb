class StudentsController < ApplicationController

  def new
    @student = Student.new
  end

  def save
    @student = Student.create(student_params)
  end


  private

  def student_params
    params.require(:student).permit(:name, :vegan, :email, :register_id)
  end
end
