class StudentsController < ApplicationController
  def new
    @student = Student.new
  end

  def index
    @search = Student.ransack(params[:q])
    @students = @search.result.paginate(page: params[:page], per_page: 10)
  end

  def create
    @student = Student.create(student_params)
    matricula = params[:matricula]
    if @student.save
      redirect_to student_path(id: @student.id, name: params[:name], matricula: params[:matricula])
    end
  end

  def show
    @student = Student.find(params[:id])
    @name = params[:name]
    @matricula = params[:matricula]
  end

  private

  def student_params
    params.require(:student).permit(:career)
  end

end
