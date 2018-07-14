class Drive
  require "google_drive"

  def initialize
    @session = GoogleDrive::Session.from_config("config.json")
    @ws = @session.spreadsheet_by_key(ENV[SPREADSHEET]).worksheets[0]
  end

end
