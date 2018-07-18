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
    @id = params[:id]
  end

  def registro; end

  def assign_team
    edificio = getBuilding
    student = Student.find(params[:id])
    student.building_id = edificio.id
    student.save
    render json: { edificio: edificio.name, color: edificio.color.name }
  end

  private

  def student_params
    params.require(:student).permit(:career)
  end

  def getBuilding
    min = 10000
    buildings_with_min_count = []
    Building.all.each do |b|
      if b.students.count < min
        min = b.students.count
      end
    end
    Building.all.each do |b|
      if b.students.count == min
        buildings_with_min_count << b
      end
    end
    buildings_with_min_count.sample
  end

end
