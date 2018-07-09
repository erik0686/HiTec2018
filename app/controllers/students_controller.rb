class StudentsController < ApplicationController

  def new
    @student = Student.new
  end

  def index
    @students = Student.paginate(page: params[:page], per_page: 10)
  end

  def create
    @student = Student.create(student_params)
    RegistrationMailer.send_signup_email(@student).deliver
    redirect_to student_path(@student) if @student.save
  end

  def show
    @student = Student.find(params[:id])
  end

  private

  def student_params
    params.require(:student).permit(:name, :last_name, :career, :vegan, :email, :register_id)
  end
end
