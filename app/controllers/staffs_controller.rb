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
    else
      render 'new'
    end
  end

  def show
    @staff = Staff.find(params[:id])
    @matricula = params[:matricula]
  end

  private

  def staff_params
    params.require(:staff).permit(:matricula, :role, :building_id)
  end

end
