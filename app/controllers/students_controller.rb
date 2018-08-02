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
      # Drive.new(ENV["STUDENTS_SPREADSHEET"]).preregister_student(@student.id, params[:matricula])
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
    # Drive.new(ENV["STUDENTS_SPREADSHEET"]).write_building(student)
    render json: { edificio: edificio.name, color: edificio.color.name }
  end

  private

  def student_params
    params.require(:student).permit(:career, :vegan)
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
    { "ADI - Arquitectura y Diseño Exploración" => "ADI",
      "ITIC - Ing. en Tecnologías de Información y Comunicación" => "ITIC",
      "ARQ - Arquitectura" => "ARQ",
      "BIO - BioIngeniería y Procesos Químicos Exploración" => "BIO",
      "CIS - Ciencias Sociales y Gobierno Exploración" => "CIS",
      "COM - Comunicación y Producción Digital Exploración" => "COM",
      "ING - Ingeniería Exploración" => "ING",
      "IMD - Ingeniería Biomédica" => "IMD",
      "IC - Ingeniería Civil" => "IC",
      "IBT - Ingeniería en Biotecnología" => "IBT",
      "IDS - Ingeniería en Desarrollo Sustentable" => "IDS",
      "IDA - Ingeniería en Diseño Automotriz" => "IDA",
      "IIA - Ingeniería en Industrias Alimentarias" => "IIA",
      "IID - Ingeniería en Innovación y Desarrollo" => "IID",
      "IMT - Ingeniería en Mecatrónica" => "IMT",
      "INCQ - Ingeniería en Nanotecnología y Ciencias Químicas" => "INCQ",
      "INT - Ingeniería en Negocios y Tecnologías de la Información" => "INT",
      "IMI - Ingeniería en Producción Digital" => "IMI",
      "ISD - Ingeniería en Sistemas Digitales y Robótica" => "ISD",
      "ITC - Ingeniería en Tecnologías Computacionales" => "ITC",
      "ITI - Ingeniería en Tecnologías de la Información" => "ITI",
      "IFI - Ingeniería en Física Industrial" => "IFI",
      "IIS - Ingeniería Industrial y de Sistemas" => "IIS",
      "IMA - Ingeniería Mecánica Administrativa" => "IMA",
      "IME - Ingeniería Mecánica Eléctrica" => "IME",
      "IQP - Ingeniería Química en Procesos Sustentables" => "IQP",
      "IQA - Ingeniería Química Administrativa" => "IQA",
      "LAF - Licenciatura en Administración Financiera" => "LAF",
      "LAE - Licenciatura en Administración y Estrategia de Negocios" => "LAE",
      "LAD - Licenciatura en Animación y Arte Digital" => "LAD",
      "LBC - Licenciatura en Biociencias" => "LBC",
      "LCMD - Licenciatura en Comunicación y Medios Digitales" => "LCMD",
      "LCPF - Licenciatura en Contaduría Públicca y Finanzas" => "LCPF",
      "LCDE - Licenciatura en Creación y Desarrollo de Empresas" => "LCDE",
      "LED - Licenciatura en Derecho" => "LED",
      "LDF - Licenciatura en Derecho Y Finanzas" => "LDF",
      "LDI - Licenciatura en Diseño Industrial" => "LDI",
      "LEC - Licenciatura en Economía" => "LEC",
      "LLE - Licenciatura en Letras Hispánicas" => "LLE",
      "LEM - Licenciatura en Mercadotecnia" => "LEM",
      "LIN - Licenciatura en Negocios Internacionales" => "LIN",
      "LNB - Licenciatura en Nutrición y Bienestar Integral" => "LNB",
      "LPS - Licenciatura en Psicología Clínica y de la Salud" => "LPS",
      "LPO - Licenciatura en Psicología Organizacional" => "LPO",
      "LPM - Licenciatura en Publicidad y Comunicación de Mercados" => "LPM",
      "LRI - Licenciatura en Relaciones Internacionales" => "LRI",
      "LTS - Licenciatura en Transformación Social" => "LTS",
      "MC - Médico Cirujano" => "MC",
      "MO - Médico Cirujano Odontólogo" => "MO",
      "NEG - Negocios Exploración" => "NEG",
      "SLD - Salud Exploración" => "SLD",
      "TIE - Tecnologías de Información y Electrónica Exploración" => "TIE"}
  end

end
