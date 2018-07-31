module ApplicationHelper

  def unique_buildings
    buildings = []
    Building.all.each do |building|
      included = false
      buildings.each do |array_building|
        if building.name == array_building
          included = true
          break
        end
      end
      unless included
        buildings << building.name
      end
    end
    buildings
  end

  def role_options
    ["Director/a", "Coordinador/a", "Líder de color", "Líder de staff", "Capitán/a de edificio", "Staff"]
  end

  def staff_careers
    ["ARQ", "IBT", "IBTt", "IC", "IDA", "IDS", "IFI", "IIA", "IID", "IIDt", "IIS", "IMA", "IMD", "IME",
    "IMI", "IMT", "INCQ", "INT", "IQA", "IQP", "ISDR", "ITC", "ITIt", "LAD", "LADt", "LAE", "LAEt",
    "LAF", "LBCt", "LCDE", "LCMD", "LCMDt", "LCPF","LDI", "LDIt", "LDF", "LEC", "LED", "LEM", "LIN",
    "LLE", "LNB", "LPL", "LPM", "LPO", "LPS", "LRI", "LTSt", "MC", "MO"] 
  end

  def id_color_building
    Building.all.map{ |b| ["#{b.color.name} #{b.name}", b.id]}
  end

  def color_building(building)
    "#{building.color.name} #{building.name}"
  end

  def quantity_per_career(career)
    career_student = []
    Student.all.each do |student|
      if student.career == career
        career_student << student
      end
    end
    career_student.count
  end
end
