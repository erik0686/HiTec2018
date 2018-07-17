class AssistancesController < ApplicationController

  def new
    @staff_asistencia = StaffAssistance.new
  end

  def create
    @staff_asistencia = StaffAssistance.new(staff_assistances_params)
    staff = Staff.find_by(matricula: params[:matricula])
    @staff_asistencia.staffs_id = staff.id
    if @staff_asistencia.save
      flash[:notice] = "Asistencia tomada"
      redirect_to asistencia_path
    else
      render 'new'
    end
  end

  private

  def staff_assistances_params
    params.require(:staff_assistance).permit(:assistance_id, :staffs_id)
  end
end
