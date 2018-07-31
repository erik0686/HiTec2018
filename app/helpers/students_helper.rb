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
    [ "ADI - Arquitectura y Diseño Exploración",
      "ITIC - Ing. en Tecnologías de Información y Comunicación",
      "ARQ - Arquitectura",
      "BIO - BioIngeniería y Procesos Químicos Exploración",
      "CIS - Ciencias Sociales y Gobierno Exploración",
      "COM - Comunicación y Producción Digital Exploración",
      "ING - Ingeniería Exploración",
      "IMD - Ingeniería Biomédica",
      "IC - Ingeniería Civil",
      "IBT - Ingeniería en Biotecnología",
      "IDS - Ingeniería en Desarrollo Sustentable",
      "IDA - Ingeniería en Diseño Automotriz",
      "IIA - Ingeniería en Industrias Alimentarias",
      "IID - Ingeniería en Innovación y Desarrollo",
      "IMT - Ingeniería en Mecatrónica",
      "INCQ - Ingeniería en Nanotecnología y Ciencias Químicas",
      "INT - Ingeniería en Negocios y Tecnologías de la Información",
      "IMI - Ingeniería en Producción Digital",
      "ISD - Ingeniería en Sistemas Digitales y Robótica",
      "ITC - Ingeniería en Tecnologías Computacionales",
      "ITI - Ingeniería en Tecnologías de la Información",
      "IFI - Ingeniería en Física Industrial",
      "IIS - Ingeniería Industrial y de Sistemas",
      "IMA - Ingeniería Mecánica Administrativa",
      "IME - Ingeniería Mecánica Eléctrica",
      "IQP - Ingeniería Química en Procesos Sustentables",
      "IQA - Ingeniería Química Administrativa",
      "LAF - Licenciatura en Administración Financiera",
      "LAE - Licenciatura en Administración y Estrategia de Negocios",
      "LAD - Licenciatura en Animación y Arte Digital",
      "LBC - Licenciatura en Biociencias",
      "LCMD - Licenciatura en Comunicación y Medios Digitales",
      "LCPF - Licenciatura en Contaduría Públicca y Finanzas",
      "LCDE - Licenciatura en Creación y Desarrollo de Empresas",
      "LED - Licenciatura en Derecho",
      "LDF - Licenciatura en Derecho Y Finanzas",
      "LDI - Licenciatura en Diseño Industrial",
      "LEC - Licenciatura en Economía",
      "LLE - Licenciatura en Letras Hispánicas",
      "LEM - Licenciatura en Mercadotecnia",
      "LIN - Licenciatura en Negocios Internacionales",
      "LNB - Licenciatura en Nutrición y Bienestar Integral",
      "LPS - Licenciatura en Psicología Clínica y de la Salud",
      "LPO - Licenciatura en Psicología Organizacional",
      "LPM - Licenciatura en Publicidad y Comunicación de Mercados",
      "LRI - Licenciatura en Relaciones Internacionales",
      "LTS - Licenciatura en Transformación Social",
      "MC - Médico Cirujano",
      "MO - Médico Cirujano Odontólogo",
      "NEG - Negocios Exploración",
      "SLD - Salud Exploración",
      "TIE - Tecnologías de Información y Electrónica Exploración"]
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

  def students_careers
    Student.pluck(:career).uniq
  end

end
