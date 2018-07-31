class StaffsController < ApplicationController
  def puntos

  end

  def registro

  end

  def new
    @staff = Staff.new
  end

  def create
    @staff = Staff.new(staff_params)
    if @staff.save
      redirect_to staff_path(id: @staff.id, matricula: @staff.matricula)
      # Drive.new(ENV["STAFF_SPREADSHEET"]).write_staff(params)
    else
      render 'new'
    end
  end

  def show
    @staff = Staff.find(params[:id])
    @matricula = params[:matricula]
  end

  def actualizar_drive_staff
    staffs = Staff.all
    Drive.new(ENV["STAFF_SPREADSHEET"]).write_staff(staffs)
  end

  private

  def staff_params
    params.require(:staff).permit(:matricula, :role, :building_id, :sex, :name, :last_name_1, :last_name_2, :career)
  end

end
