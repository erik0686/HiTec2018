module StudentsHelper

  def generate_qr(text)
    require 'barby'
    require 'barby/barcode'
    require 'barby/barcode/qr_code'
    require 'barby/outputter/png_outputter'
    barcode = Barby::QrCode.new(text, level: :q, size: 5)
    base64_output = Base64.encode64(barcode.to_png({ xdim: 5 }))
    "data:image/png;base64,#{base64_output}"
  end

  def vegan?(student)
    student.vegan ? "Si" : "No"
  end

  def career_options
    [ "Arquitectura y Diseño Exploración",
      "Ing. en Tecnologías de Información y Comunicación",
      "Arquitectura",
      "BioIngeniería y Procesos Químicos Exploración",
      "Ciencias Sociales y Gobierno Exploración",
      "Comunicación y Producción Digital Exploración",
      "Ingeniería Exploración",
      "Ingeniería Biomédica",
      "Ingeniería Civil",
      "Ingeniería en Biotecnología",
      "Ingeniería en Desarrollo Sustentable",
      "Ingeniería en Diseño Automotriz",
      "Ingeniería en Industrias Alimentarias",
      "Ingeniería en Innovación y Desarrollo",
      "Ingeniería en Mecatrónica",
      "Ingeniería en Nanotecnología y Ciencias Químicas",
      "Ingeniería en Negocios y Tecnologías de la Información",
      "Ingeniería en Producción Digital",
      "Ingeniería en Sistemas Digitales y Robótica",
      "Ingeniería en Tecnologías Computacionales",
      "Ingeniería en Tecnologías de la Información",
      "Ingeniería en Física Industrial",
      "Ingeniería Industrial y de Sistemas",
      "Ingeniería Mecánica Administrativa",
      "Ingeniería Mecánica Eléctrica",
      "Ingeniería Química en Procesos Sustentables",
      "Ingeniería Química Administrativa",
      "Licenciatura en Administración Financiera",
      "Licenciatura en Administración y Estrategia de Negocios",
      "Licenciatura en Animación y Arte Digital",
      "Licenciatura en Biociencias",
      "Licenciatura en Comunicación y Medios Digitales",
      "Licenciatura en Contaduría Públicca y Finanzas",
      "Licenciatura en Creación y Desarrollo de Empresas",
      "Licenciatura en Derecho",
      "Licenciatura en Derecho Y Finanzas",
      "Licenciatura en Diseño Industrial",
      "Licenciatura en Economía",
      "Licenciatura en Letras Hispánicas",
      "Licenciatura en Mercadotecnia",
      "Licenciatura en Negocios Internacionales",
      "Licenciatura en Nutrición y Bienestar Integral",
      "Licenciatura en Psicología Clínica y de la Salud",
      "Licenciatura en Psicología Organizacional",
      "Licenciatura en Publicidad y Comunicación de Mercados",
      "Licenciatura en Relaciones Internacionales",
      "Licenciatura en Transformación Social",
      "Médico Cirujano",
      "Médico Cirujano Odontólogo",
      "Negocios Exploración",
      "Salud Exploración",
      "Tecnologías de Información y Electrónica Exploración"]
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

  def students_careers
    Student.pluck(:career).uniq
  end

end
