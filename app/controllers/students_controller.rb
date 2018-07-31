class StudentsController < ApplicationController
  before_action :authenticate_user!, only: [:registro]

  def new
    @student = Student.new
  end

  def create
    @student = Student.new(student_params)
    @student.career = career_options_with_description[@student.career]
    matricula = params[:matricula]
    if @student.save
      Drive.new(ENV["STUDENTS_SPREADSHEET"]).preregister_student(@student.id, params[:matricula])
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
    Drive.new(ENV["STUDENTS_SPREADSHEET"]).write_building(student)
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

  def career_options_with_description
    { "Arquitectura y Diseño Exploración" => "ADI",
      "Ing. en Tecnologías de Información y Comunicación" => "ITIC",
      "Arquitectura" => "ARQ",
      "BioIngeniería y Procesos Químicos Exploración" => "BIO",
      "Ciencias Sociales y Gobierno Exploración" => "CIS",
      "Comunicación y Producción Digital Exploración" => "COM",
      "Ingeniería Exploración" => "ING",
      "Ingeniería Biomédica" => "IMD",
      "Ingeniería Civil" => "IC",
      "Ingeniería en Biotecnología" => "IBT",
      "Ingeniería en Desarrollo Sustentable" => "IDS",
      "Ingeniería en Diseño Automotriz" => "IDA",
      "Ingeniería en Industrias Alimentarias" => "IIA",
      "Ingeniería en Innovación y Desarrollo" => "IID",
      "Ingeniería en Mecatrónica" => "IMT",
      "Ingeniería en Nanotecnología y Ciencias Químicas" => "INCQ",
      "Ingeniería en Negocios y Tecnologías de la Información" => "INT",
      "Ingeniería en Producción Digital" => "IMI",
      "Ingeniería en Sistemas Digitales y Robótica" => "ISD",
      "Ingeniería en Tecnologías Computacionales" => "ITC",
      "Ingeniería en Tecnologías de la Información" => "ITI",
      "Ingeniería en Física Industrial" => "IFI",
      "Ingeniería Industrial y de Sistemas" => "IIS",
      "Ingeniería Mecánica Administrativa" => "IMA",
      "Ingeniería Mecánica Eléctrica" => "IME",
      "Ingeniería Química en Procesos Sustentables" => "IQP",
      "Ingeniería Química Administrativa" => "IQA",
      "Licenciatura en Administración Financiera" => "LAF",
      "Licenciatura en Administración y Estrategia de Negocios" => "LAE",
      "Licenciatura en Animación y Arte Digital" => "LAD",
      "Licenciatura en Biociencias" => "LBC",
      "Licenciatura en Comunicación y Medios Digitales" => "LCMD",
      "Licenciatura en Contaduría Públicca y Finanzas" => "LCPF",
      "Licenciatura en Creación y Desarrollo de Empresas" => "LCDE",
      "Licenciatura en Derecho" => "LED",
      "Licenciatura en Derecho Y Finanzas" => "LDF",
      "Licenciatura en Diseño Industrial" => "LDI",
      "Licenciatura en Economía" => "LEC",
      "Licenciatura en Letras Hispánicas" => "LLE",
      "Licenciatura en Mercadotecnia" => "LEM",
      "Licenciatura en Negocios Internacionales" => "LIN",
      "Licenciatura en Nutrición y Bienestar Integral" => "LNB",
      "Licenciatura en Psicología Clínica y de la Salud" => "LPS",
      "Licenciatura en Psicología Organizacional" => "LPO",
      "Licenciatura en Publicidad y Comunicación de Mercados" => "LPM",
      "Licenciatura en Relaciones Internacionales" => "LRI",
      "Licenciatura en Transformación Social" => "LTS",
      "Médico Cirujano" => "MC",
      "Médico Cirujano Odontólogo" => "MO",
      "Negocios Exploración" => "NEG",
      "Salud Exploración" => "SLD",
      "Tecnologías de Información y Electrónica Exploración" => "TIE"}
  end

end
