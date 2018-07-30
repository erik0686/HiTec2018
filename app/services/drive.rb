class Drive
  require "google_drive"

  def initialize(spreadsheet)
    @session = GoogleDrive::Session.from_config("config.json")
    @ws = @session.spreadsheet_by_key(spreadsheet).worksheets[0]
  end

  def write_id(matricula, id)
    (1..@ws.num_rows).each do |row|
      if @ws[row, 5].include? matricula
        @ws[row, 6] = id
        @ws.save
        @ws.reload
        break
      end
    end
  end

  def write_staff(params)
    next_line = @ws.num_rows
    if params[:staff][:role] == "Capitán/a de edificio"
      building = Building.find(params[:staff][:building_id])
      @ws[next_line + 1, 8] = "#{building.color.name} #{building.name}"
    end
    @ws[next_line + 1, 1] = params[:sexo]
    @ws[next_line + 1, 2] = params[:nombre]
    @ws[next_line + 1, 3] = params[:last_name_1]
    @ws[next_line + 1, 4] = params[:last_name_2]
    @ws[next_line + 1, 5] = params[:staff][:matricula]
    @ws[next_line + 1, 6] = params[:career]
    @ws[next_line + 1, 7] = params[:staff][:role]
    @ws.save
    @ws.reload
  end

  def write_staff_assistance(matricula, assistance)
    column_activity = 0
    (1..@ws.num_cols).each do |col|
      if @ws[1, col] == assistance
        column_activity = col
        break
      end
    end
    (1..@ws.num_rows).each do |row|
      if @ws[row, 5].include? matricula
        @ws[row, column_activity] = "Si"
        @ws.save
        @ws.reload
        break
      end
    end
  end

  def write_student_activity(id, activity)
    column_activity = 0
    (1..@ws.num_cols).each do |col|
      if @ws[1, col] == activity
        column_activity = col
        break
      end
    end
    (1..@ws.num_rows).each do |row|
      if @ws[row, 1] == id.to_s
        @ws[row, column_activity] = "Si"
        @ws.save
        @ws.reload
        break
      end
    end
  end

  def create_activity(name)
    next_column = @ws.num_cols
    @ws[1, next_column + 1] = name
    @ws.save
    @ws.reload
  end

  def delete_activity(name)
    num_activity = 0
    (1..@ws.num_cols).each do |col|
      if(@ws[1,col] == name)
        num_activity = col
        break
      end
    end
    activity_array = ((num_activity + 1)..@ws.num_cols).map { |c| @ws[1,c] }
    activity_array = [activity_array,[]]
    @ws.update_cells(1, num_activity, activity_array)
    @ws[1, @ws.num_cols] = ""
    @ws.save
  end

  def preregister_student(id, matricula)
    found = false
    (1..@ws.num_rows).each do |row|
      if(@ws[row,4] == matricula)
        found = true
        @ws[row,1] = id
        break
      end
    end
    unless found
      @ws[num_rows + 1, 1] = id
      @ws[num_rows + 1, 4] = matricula
      @ws.save
      @ws.reload
    end
    @ws.save
    @ws.reload
  end

  def write_building(student)
    (1..@ws.num_rows).each do |row|
      if(@ws[row,1] == student.id.to_s)
        @ws[row,5] = student.building.color.name
        @ws[row,6] = student.building.name
        break
      end
    end
    @ws.save
    @ws.reload
  end

end
