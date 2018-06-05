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
    ["ARQ", "IBTt", "IC", "IDA", "IDS", "IFI", "IIA", "IIDt", "IIS", "IMA", "IMD", "IME",
     "IMI", "IMT", "INCQ", "INT", "IQA", "IQP", "ISDR", "ITC", "ITIt", "LADt", "LAEt", 
     "LAF", "LBCt", "LCDE", "LCMDt", "LCPF", "LDIt", "LDF", "LEC", "LED", "LEM", "LIN", 
     "LLE", "LNB", "LPL", "LPM", "LPO", "LPS", "LRI", "LTSt", "MC", "MO"]
  end

end
