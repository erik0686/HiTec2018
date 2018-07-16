class Drive
  require "google_drive"

  def initialize
    @session = GoogleDrive::Session.from_config("config.json")
    @ws = @session.spreadsheet_by_key(ENV["SPREADSHEET"]).worksheets[0]
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
end
